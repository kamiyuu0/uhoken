class StaticPagesController < ApplicationController
  require 'yaml'

  def top
  end

  def result
    @score = session[:result]
    @result = reaction_hash.dig('result')[@score]
  end

  private
  def reaction_hash
    YAML.load_file("questions.yml")
  end
end
