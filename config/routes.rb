OnelifeRegister::Application.routes.draw do
  devise_for :participants
  devise_for :volunteers

  root to: 'pages#index'
end
