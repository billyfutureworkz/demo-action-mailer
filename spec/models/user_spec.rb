require 'rails_helper'

RSpec.describe User do
  let!(:user) { FactoryGirl.create(:user) }
 
  it "sends an email" do
    UserMailer.welcome_email(user).deliver_later
    puts ActionMailer::Base.deliveries.first
    expect { UserMailer.welcome_email(user).deliver_later }.to change { ActionMailer::Base.deliveries.count }.by(1)
  end
end