require 'rails_helper'

RSpec.describe 'Page views', type: :request do
  context 'When user sends a GET to /' do
    before { get '/'}
    it 'responds with status 200' do
      expect(response).to have_http_status(200)
    end
  end
  context "When user sends a GET to '/page', parsed url list is returned" do
    before { get '/page'}
    it 'responds with status 200' do
      expect(response).to have_http_status(200)
    end
  end
  context "When GET to '/page/visits' total count is returned" do
    before { get '/page/visits'}
    it 'responds with status 200' do
      expect(response).to have_http_status(200)
    end
  end
  context "When GET to '/page/visits/sorted', sorted desc order returned" do
    before { get '/page/visits/sorted'}
    it 'responds with status 200' do
      expect(response).to have_http_status(200)
    end
  end  
end