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
end
