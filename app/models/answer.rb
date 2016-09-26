class Answer < ActiveRecord::Base
	belongs_to :question
	belongs_to :user
	has_many :corrections, dependent: :destroy 
	validates :text, presence: true
	
end
