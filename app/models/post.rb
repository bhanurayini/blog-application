class Post < ApplicationRecord
	resourcify
	has_many :comments, dependent: :destroy
	validates :title, presence: true
	validates :body, presence: true
end
