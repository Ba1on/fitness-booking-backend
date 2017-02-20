Rails.application.routes.draw do
  scope '/api' do
    mount_devise_token_auth_for 'User', at: 'auth'
    resources :courses
    resources :room_slots
    resources :offices
    resources :rooms
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
