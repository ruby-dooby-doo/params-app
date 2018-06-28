class Api::ParametersExampleController < ApplicationController
  def query_params_action
    @message = params["name"]
    @other_message = params["some_key"]

    render "query_params_view.json.jbuilder"
  end

  def query_params_name
    @message = params["the_name"].upcase
    if @message[0] == "A"
      @message = "Your name begins with A"
    end
    render "query_params_name.json.jbuilder"
  end

  def guessing_game
    user_input = params["user_guess"].to_i
    winning_number = 36
    # if the user guesses correctly, tell them good job
    if user_input == winning_number
      @message = "Congratulations, you won!"
    elsif user_input < winning_number
    # if they are too low, tell them to guess higher
      @message = "You did terribly, guess higher next time dummy"
    else
      # if they guess too high, tell them to guess lower
      @message = "You did terribly, guess lower next time dummy"
    end
    render "query_game_view.json.jbuilder"
  end

  def segment_param
    @message = params["first_name"]
    render "segment_param.json.jbuilder"
  end
end
