class QuizzesController < ApplicationController
  def show
    @questions = Question.includes(:answers).order(:id)
    @current_index = session[:quiz_index] || 0
    @question = @questions[@current_index]

    if @question.nil?
      redirect_to action: :result
    end
  end

  def answer
    @questions = Question.includes(:answers).order(:id)
    current_index = session[:quiz_index] || 0
    question = @questions[current_index]

    if question.nil?
      redirect_to action: :result and return
    end

    selected = params[:answer].to_i

    session[:score] ||= 0
    session[:score] += 1 if question.answers[selected]&.correct

    session[:answers] ||= []
    session[:answers] << {
      question_id: question.id,
      selected_index: selected
    }

    Rails.logger.debug "SALVO NA SESSION: #{session[:answers].inspect}"

    session[:quiz_index] = current_index + 1
    redirect_to action: :show
  end

  def result
    @score = session[:score] || 0
    @user_answers = (session[:answers] || []).map(&:symbolize_keys)

    @report = @user_answers.map do |entry|
      question = Question.includes(:answers).find_by(id: entry[:question_id])
      next unless question

      selected = question.answers[entry[:selected_index]]
      correct_answer = question.answers.find(&:correct)

      {
        question: question.content,
        selected: selected&.content,
        correct: correct_answer&.content,
        is_correct: selected&.correct
      }
    end.compact

    puts "DEBUG — report size: #{@report.size}"

    @total = @report.size
    reset_session
  end
end
