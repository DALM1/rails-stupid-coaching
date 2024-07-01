Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Define the route for asking a question
  get '/ask', to: 'questions#ask', as: :ask

  # Define the route for answering a question
  get '/answer', to: 'questions#answer', as: :answer

  # Defines the root path route ("/")
  # You can uncomment and set the root path if needed
  # root "posts#index"
end
