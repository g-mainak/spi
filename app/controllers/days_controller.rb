class DaysController < ApplicationController

  def display
    @days = Day.all
    if params[:lecture]
      @day = Day.find params[:lecture]
    else
      @day = Day.find_by day: Date.today
    end
    @questions = @day.questions.order(votes: :desc)
  end

end
