module ParseUtils
  class FileParser
    def self.parse_file(file_path)
      data = Hash.new { |hash, key| hash[key] = [] }
      if File.exist?(file_path)
        log_file = File.open(file_path, 'r')
        while line = log_file.gets 
          url, ip_address = line.split(' ')
          data[url] << ip_address
        end   
        return data
      end
      return nil    
    end
  end
  class PageViewsAnalizer
    def self.count_page_views(parsed_data)
      view_count = Hash.new { |hash, key| hash[key] = nil }
      parsed_data.map do |url, ip_address|
        view_count[url] = ip_address.length 
      end
      return view_count
    end
    def self.sort_page_views(view_count, opt = true)
      sorted = Hash[ view_count.sort{ 
        |k, v| opt ? v[1] <=> k[1] : k[1] <=> v[1] 
      }]
    end
  end
end

# data.map{|k, v|  
#   call = k.filter { |i| i == /\/\d/ }
#   return call
# } 

# data.map do |k, v|
#   result = Hash.new { |hash, key| hash[key] = [] }
#   result[k] << data[k].length
# # end

# data.map do |k, v|
#   result = []  
#   role = { "#{k}": v.length}
#   p sorted= Hash[role.sort{|v0, v1|  v0[1] <=> v1[1]}]
# end

# # sort by key
# result = Hash[ org.sort{ |v0, v1| v0[0] <=> v1[0] } ]
# # => {"a"=>3, "b"=>4, "c"=>2}

# # sort by value
# result = Hash[ org.sort{ |v0, v1| v0[1] <=> v1[1] } ]
# # => {"c"=>2, "a"=>3, "b"=>4}