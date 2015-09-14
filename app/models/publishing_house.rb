class PublishingHouse < ActiveRecord::Base
	has_many :published, as: :publisher, foreign_key: :publisher_id, class_name: 'Book'
end
