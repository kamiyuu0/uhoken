class QuestionController < ApplicationController
  require 'yaml'

  def show
    @id = params[:id].to_i
    @questions = reaction_hash.dig('questions')[@id - 1]
    if @id == 1
      session[:result] = 0
    end
  end

  def update
    @id = params[:id]
    answer = reaction_hash.dig('questions')[@id.to_i - 1].dig('a')
    choice = params[:choice].to_i
    if answer == choice
      session[:result] += 1
    end

    if @id == '5'
      redirect_to result_path
    else
      redirect_to question_path(@id.to_i + 1)
    end
  end

  private

  def reaction_hash
    YAML.load_file("questions.yml")
  end

end
