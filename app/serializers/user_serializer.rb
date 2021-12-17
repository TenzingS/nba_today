class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password_digest

  has_many :posts
  has_many :comments
end