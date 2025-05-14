class QuestionController < ApplicationController
  require 'yaml'
  def show
    @id = params[:id].to_i
    @questions = reaction_hash.dig('questions')[@id - 1]
  end

  private

  def reaction_hash
    YAML.load_file("questions.yml")
  end
end
