class Question < ActiveRecord::Base
	belongs_to :user
	has_many :answers
	has_many :corrections
	validates :text, presence: true
	validates :title, presence: true
end
