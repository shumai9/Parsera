class PageController < ApplicationController
  def index
    render('page', :locals => {parsed_result: parsed_result})
  end
  def show_count
    render('visits', :locals => {page_count: view_count})
  end
  def sort_views    
    render('sorted', :locals => {sorted: sorted_page_views,
      unique: unique_views})
  end

  private
  def parsed_result
    FileParser.parse_file('log/webserver.log')
  end
  def view_count
    PageViewsAnalizer.count_page_views(parsed_result)
  end
  def sorted_page_views
    PageViewsAnalizer.sort_page_views(view_count)
  end
  def unique_views
    PageViewsAnalizer.filter_unique_views(sorted_page_views)
  end
end
