OnelifeRegister::Application.routes.draw do
  devise_for :participants
  devise_for :volunteers
end
