require 'file_parser'
class PageController < ApplicationController
  def index
    @res = FileParser.parse_file('log/webserver.log')
    render('page', :locals => @res)
  end
end
