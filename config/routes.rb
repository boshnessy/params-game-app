Rails.application.routes.draw do
  get '/name-url' => 'pages#show_name'
  get '/number-game' => 'pages#guess_a_number'
  get '/segment-params-url/:some_variable' => 'pages#segment_params_method'
  get '/city-state/:city/:state' => 'pages#city_state_method'
end
