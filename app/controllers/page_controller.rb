class PageController < ApplicationController
  def index
    @res = FileParser.parse_file('log/webserver.log')
    render('page', :locals => @res )
  end
  def show_count
    @res = FileParser.parse_file('log/webserver.log')
    @view_counts = PageViewsAnalizer.count_page_views(@res)    
    render('visits', :locals => @view_counts)
  end
  def sort_views
    @res = FileParser.parse_file('log/webserver.log')
    @view_counts = PageViewsAnalizer.count_page_views(@res)
    @sorted_views = PageViewsAnalizer.sort_page_views(@view_counts)
    render('sorted', :locals => @sorted_views)
  end
end
