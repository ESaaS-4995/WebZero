require "rails_helper"

describe ApplicationHelper, type: :helper do
  before :each do
    user = User.new(:email=>'test@example.com')
    helper.stub(:current_user).and_return(user)
  end
  describe "#generate" do
    it "should return nothing if path is nil" do 
      helper.generate(nil, 'test@test.com').should be_nil
    end 
    it "returns website" do
      helper.generate('./test-resume.pdf', 'test@test.com')
      #.should be_true
    end
  end
end