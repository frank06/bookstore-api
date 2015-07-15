class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :name, :discount
  has_many :books
  has_many :published
end
