class CommentsController < ApplicationController

  def create
    Question.find(params[:comment][:question]).comments.create(c_params)
    redirect_to root_path
  end
  
  def c_params
    params[:comment].permit(:comment, :user)
  end

end
