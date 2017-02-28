class SurveyController < ApplicationController
  def index
  end

  def result
  end

  def boolean
    @answer = params['answer']
    redirect_to ("/landing/#{@answer}")
  end

  def landing
    @answer = params[:answer]
  end

  def submit
    render json: params['address_first']
  end
end
