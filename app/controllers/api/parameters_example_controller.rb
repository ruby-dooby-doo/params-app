class Api::ParametersExampleController < ApplicationController
  def query_params_action
    @message = params["name"]
    @other_message = params["some_key"]

    render "query_params_view.json.jbuilder"
  end

  def query_params_name
    if params["the_name"][0] == "A" || params["the_name"][0] == "a"
      @message = "Your name begins with A"
    else
      @message = params["the_name"].upcase
    end
    render "query_params_name.json.jbuilder"
  end
end
