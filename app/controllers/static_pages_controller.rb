class StaticPagesController < ApplicationController
  require "yaml"

  def top
  end

  def result
    @score = params[:id].to_i
    @result = reaction_hash.dig("result")[@score]
    @image = ActionController::Base.helpers.asset_url("#{@result.dig('ogp_image')}", type: :image)
    @image = "#{request.protocol}#{request.host}#{@image}?#{Time.now.to_i}"
    set_meta_tags(og: { image: @image }, twitter: { image: @image })
  end

  private
  def reaction_hash
    YAML.load_file("questions.yml")
  end
end
