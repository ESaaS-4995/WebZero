require 'rails_helper'

describe UsersController, type: :controller do
  it 'should be able to update a user' do
    current_user = User.create!({
        :email => "test1@test.com",
        :password => "123456",
        :password_confirmation => "123456"})
    # TODO: test post
    #post :update, params: {user: {resume: "resume"}}
    #expect(flash[:notice]).to eq('')
  end 
end 