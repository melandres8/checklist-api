Rails.application.routes.draw do
  resources :checklists do
    resources :items
  end
end
