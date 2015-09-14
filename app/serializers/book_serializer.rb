class BookSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :author
  belongs_to :publisher
end
