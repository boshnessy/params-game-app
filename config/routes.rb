Rails.application.routes.draw do
  get '/name-url' => 'pages#show_name'
  get '/number-game' => 'pages#guess_a_number'
end
