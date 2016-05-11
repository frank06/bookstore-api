class PublishingHouse < ApplicationRecord
  has_many :published, as: :publisher, foreign_key: :publisher_id, class_name: 'Book'
end
