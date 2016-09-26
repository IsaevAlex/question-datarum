class Question < ActiveRecord::Base
	belongs_to :user
	has_many :answers, dependent: :destroy
	has_many :corrections, dependent: :destroy
	validates :text, presence: true
	validates :title, presence: true
end
