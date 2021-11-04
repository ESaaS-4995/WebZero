require 'rails_helper'

describe WebsitesController, type: :controller do
  before(:all) do
    
  end

  it 'should be able to create a website' do
    #post :create, params: {website: {website_address:"test address", username: "test user"}}
    #expect(response.status).to eq(422)
  end 

  it 'should be able to destroy a website' do 
    @website = 'test website'
    #TODO test destroy
  end 

  it 'should be able to update a website' do 

    #Website.create(id: 1, website_address:"test@gmail.com", username: "user0")
    #patch :update, params: {id: 1, website: {website_address:"test address", username: "test user"}}
    #post :update, params: {website: {website_address:"test address", username: "test user"}}
    #expect(response.status).to eq(422)
  end 
end 
