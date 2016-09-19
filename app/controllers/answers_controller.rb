class AnswersController < ApplicationController
	def create
		@answer = Answer.new(answer_params)
		@answer.user_id = current_user.id if current_user
		@answer.save
	end

	private
		def answer_params
			params.require(:answer).permit(:text,:question_id)
		end
end
