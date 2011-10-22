# id :int
# name: string
#email: string
#t.timestamp
class User < ActiveRecord::Base
  attr_accessible :name, :email
end
