class Correction < ActiveRecord::Base
	belongs_to :user
	belongs_to :answer
	belongs_to :question
	validates :text, presence: true
	
end
