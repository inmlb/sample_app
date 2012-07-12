class User < ActiveRecord::Base
  attr_accessible :nom, :email

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :nom, :presence => true,
                  :length   => { :maximum => 50 }
  validates :email, :presence => true,
                    :format   => { :with => email_regex },
                    :uniqueness => { :case_sensitive => false } # true

end
