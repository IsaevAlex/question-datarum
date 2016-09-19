class QuestionsController < ApplicationController
	def create
		@question = Question.new
	    @question = current_user.questions.create(params[:question].permit(:title, :text))
		@question.user_id = current_user.id if current_user
		@question.save
	end
end
