class CorrectionsController < ApplicationController

	def create
		@correction = Correction.new(correction_params)
		@correction.user_id = current_user.id if current_user
		@correction.save
	end

	def correct
		type = params[:type]
		@correction = Correction.find(params[:id])
	    if type == "correct"
	      	@correction.update(correction_update_params)
	      	redirect_to root_path
		end
	end

	private

	def correction_update_params
		params.permit(:id, :text, :question_id, :answer_id, :accept)
	end

	def correction_params
		params.require(:correction).permit(:text, :question_id, :answer_id, :accept)
	end
end
