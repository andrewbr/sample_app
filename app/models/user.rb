# id :int
# name: string
# email: string
# encrypted_password :string
# t.timestamp
class User < ActiveRecord::Base
  
  
  attr_accessor :password
  #access to change
  attr_accessible :name, :email, :password, :password_confirmation
 
 
  #regualr expression for address testing validity
  email_regex = /[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :name,  :presence => true,
                    :length   => {:maximum => 20}
  
  validates :email, :presence   => true,
                    :format     => { :with => email_regex },
                    :uniqueness => { :case_sensitive => false}

  validates :password,  :presence     => true,
                        :confirmation => true,
                        #within = inbetween
                        :length   => {:within => 6..40}
end
