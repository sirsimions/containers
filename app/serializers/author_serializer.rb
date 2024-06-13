class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :name, :department, :password
end
