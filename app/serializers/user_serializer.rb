class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password
  has_many :projects 


end
