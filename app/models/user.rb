# id :int
# name: string
#email: string
#t.timestamp
class User < ActiveRecord::Base
  attr_accessible :name, :email
 
 
  #regualr expression for address testing validity
  email_regex = /[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :name,  :presence => true,
                    :length   => {:maximum => 20}
  
  validates :email, :presence   => true,
                    :format     => { :with => email_regex },
                    :uniqueness => { :case_sensitive => false}
end
