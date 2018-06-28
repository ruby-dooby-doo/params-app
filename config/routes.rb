Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get '/query_parameter_url' => 'parameters_example#query_params_action'
    get '/query_parameter_name' => 'parameters_example#query_params_name'
    post '/query_guessing_game' => 'parameters_example#guessing_game'
    get '/segment_parameter/:first_name' => 'parameters_example#segment_param'
    get '/segment_guessing_game/:user_guess' => 'parameters_example#guessing_game'
  end
end
