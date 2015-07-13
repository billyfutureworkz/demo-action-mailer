require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe '#create' do
    it 'should send an email' do
      expect { 
        post :create, user: FactoryGirl.attributes_for(:user) 
        
      }.to change(ActionMailer::Base.deliveries, :count).by(1)
    end
  end
end