Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get '/query_parameter_url' => 'parameters_example#query_params_action'
    get '/query_parameter_name' => 'parameters_example#query_params_name'
    get '/query_guessing_game' => 'parameters_example#query_game'
  end
end
