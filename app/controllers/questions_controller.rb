class QuestionsController < ApplicationController
	def index
		if params[:hashtag].present?
			@questions = Question.search_by_hashtag(params[:hashtag])
		else
			@questions = Question.all
		end
	end

	def show
		@question = Question.find(params[:id])
	end

	def new
		@question = Question.new
	end

	def create
		@question = Question.new(question_params)

		if @question.save
			redirect_to questions_path
		else
			render :new
		end
	end

	def edit
		@question = Question.find(params[:id])
	end

	def update
		@question = Question.find(params[:id])

		if @question.update(question_params)
			redirect_to question_path(@question.id)
		else
			render :edit
		end
	end

	def destroy
		@question = Question.find(params[:id])

		@question.destroy
		redirect_to questions_path
	end

	private
	def question_params
		params.require(:question).permit(:answer, :statement, :subject_id, :que_type_id)
	end
end