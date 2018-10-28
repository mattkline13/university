Rails.application.routes.draw do
  devise_for :users
  root 'courses#index'
  
  resources :courses do
    collection do
      get 'search'
    end
  end

  resources :sections do
    collection do
      get 'search'
    end
  end

  resources :students do
    collection do
      get 'search'
    end
  end

end
