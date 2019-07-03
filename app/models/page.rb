class Page < ApplicationRecord
  #webpage makes more sense
  validates_presence_of :url,:ip_address, :page_id
end
