require 'rails_helper'

RSpec.describe Page, type: :model do
  it{ should validate_presence_of(:url) }
  it{ should validate_presence_of(:page_id) }
  it{ should validate_presence_of(:ip_address) }
  #being able to open file and parse
end
