Rails.application.routes.draw do
  resources :users do
      collection do
        get :autocomplete
    end
  end
  resources :projects
end
