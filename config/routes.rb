Rails.application.routes.draw do

  # This show route can be refactored into the above resources method call, like so:
  # resources :students, only: [:index, :show]
  # However, for the sake of this lab and seeing how you can pass params through
  # the route, we'll keep it explicit for now and refactor later.
  resources :students, only: [:index, :show, :edit]
  # resources :activate_students, only: "students#activate"
  # get "students/:id", to: "students#show"
  get "students/:id/activate", to: "students#update", as: "activate_student"
  # patch "students/:id/activate", to: "students#show"
end
