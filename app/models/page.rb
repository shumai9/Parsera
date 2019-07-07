class Page < ApplicationRecord
  validates_presence_of :url,:ip_address, :page_id
end
