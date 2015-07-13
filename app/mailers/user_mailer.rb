class UserMailer < ApplicationMailer
   default from: 'billy@futureworkz.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    attachments['filename.jpg'] = {:mime_type => 'application/mymimetype',
                                   :content => some_string }
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

end


# Sending Email To Multiple Recipients

# class AdminMailer < ActionMailer::Base
#   default to: Proc.new { Admin.pluck(:email) },
#           from: 'notification@example.com'
 
#   def new_registration(user)
#     @user = user
#     mail(subject: "New User Signup: #{@user.email}")
#   end
# end


# Sending Email With Name

# def welcome_email(user)
#   @user = user
#   email_with_name = %("#{@user.name}" <#{@user.email}>)
#   mail(to: email_with_name, subject: 'Welcome to My Awesome Site')
# end