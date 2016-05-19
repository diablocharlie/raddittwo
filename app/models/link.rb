class Link < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

	acts_as_votable
	belongs_to :user
	has_many :comments
end
