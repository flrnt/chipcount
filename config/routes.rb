Rails.application.routes.draw do
  resources :festivals
  root to: 'pages#home'
end
