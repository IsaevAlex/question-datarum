class HomeController < ApplicationController
	def index
		@questions = Question.includes(:answers).order("created_at DESC")
		@answers = Answer.all
		@answer = Answer.new
		@question = Question.new
	end
end
