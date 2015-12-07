#Model used for users
#valid_email? checks the database for an already existing user
class User < ActiveRecord::Base
  def self.valid_email?(email)
      if self.find_by(:email => email) != nil
        true
      else
        false
      end
  end
end
