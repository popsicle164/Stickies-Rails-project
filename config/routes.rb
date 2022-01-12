Rails.application.routes.draw do
  root "leftpad#home"
  post "create", to: "leftpad#create"
  get "edit", to: "leftpad#edit"
  get "delete", to: "leftpad#delete"
end
