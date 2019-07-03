module LogHelper
  class FileParser
    def self.parse_file(file_path)
      @log_file = File.open(file_path) if File.exist?(file_path)   
      @data = Hash.new { |hash, key| hash[key] = [] }
      if @log_file
        @log_file.each do |line| 
          url, ip_address = line.split(' ')
          @data[url] << ip_address
        end
        return @data
      end
    end
  end
end
# data.map{|k, v|  
#   call = k.filter { |i| i == /\/\d/ }
#   return call
# } 