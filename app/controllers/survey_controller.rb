class SurveyController < ApplicationController
  def index
  end

  def result
    pw = "davipede"
    input = params['input']

    if pw == input
      @render = true
    else
      flash[:errors] = "Incorrect input, try again."
      redirect_to ('/result')
    end
  end

  def thank
  end

  def boolean
    @answer = params['answer']
    redirect_to ("/landing/#{@answer}")
  end

  def landing
    @answer = params[:answer]
  end

  def submit_yes
    submission = Musician.create(instrument: params['instrument'], address: params['address_first'], name: params['name_yes'], stranger: params['meet_up'], rent: params['rent'], price: params['pricing'], comment: params['comment'])

    if submission.valid?
      session[:user] = "Submitted"
      redirect_to ('/thank')
    else
      flash[:errors] = "Please fill out all questions"
      redirect_to ('/landing/yes')
    end
  end
end
