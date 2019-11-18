class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @userask = params[:ask]
    if @userask == "I am going to work"
      @answer = 'Great!'
    elsif @userask.include?("?")
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

# If the message is I am going to work, the coach will answer Great!
# If the message hasa question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
# Otherwise she/he will answer I don't care, get dressed and go to work!
