Rails.application.routes.draw do
  devise_for :users
  get '/add_skill', to: "skills#add_skill", as: "add_skill"
  post '/add_skill', to: "skills#post_add_skill"
  get '/edit_primaryskill_secondarystack', to: "skills#edit_primaryskill_secondarystack"
  get '/edit_secondaryskill', to: "skills#edit_secondaryskill"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "homes#index"
end
