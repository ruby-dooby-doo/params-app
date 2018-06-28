class Api::ParametersExampleController < ApplicationController
  def query_params_action
    @message = params["name"]
    @other_message = params["some_key"]

    render "query_params_view.json.jbuilder"
  end

  def query_params_name
    @name = params["the_name"].upcase
    render "query_params_name.json.jbuilder"
  end
end
