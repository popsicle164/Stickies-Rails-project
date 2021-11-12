Rails.application.routes.draw do
  root "leftpad#home"
  post "create", to: "leftpad#create"
  get "edit", to: "leftpad#edit"
  get "delete", to: "leftpad#delete"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
