# frozen_string_literal: true

class HomeController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]
    @answer = check_question(@question) if @question
  end

  def check_question(question)
    return 'Great!' if question == 'I am going to work'

    if question.include? '?'
      return 'Silly question, get dressed and go to work!'
    end

    'I don\'t care, get dressed and go to work!'
  end
end
