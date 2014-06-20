class QuestionsController < ApplicationController

  def create
    Day.find(params[:question][:day]).questions.create(q_params)
    redirect_to root_path
  end

  def upvote
    q = Question.find(params[:id])
    q.votes = q.votes + 1
    q.save
    render nothing: true
  end
  
  def q_params
    params[:question].permit(:question, :user)
  end
end
