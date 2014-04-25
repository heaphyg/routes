class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments, dependent: :destroy
	has_many :taggings
	has_many :tags, through: :taggings
end
