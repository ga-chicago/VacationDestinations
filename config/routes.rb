Rails.application.routes.draw do
  # http://docs.railsbridge.org/intro-to-rails/setting_the_default_page
  # root - or landing page
  root 'destinations#index'

  # destinations
  get 'destinations'  => 'destinations#index'
  get 'destinations/new'  => 'destinations#new'
  post 'destinations/create'  => 'destinations#create'
  post 'destinations/update' => 'destinations#update'
  patch 'destinations/delete' => 'destinations#delete'
  get 'destinations/confirmation' => 'destinations#confirmation'

  # sessions - login/logout
  get 'users/login' =>  'sessions#login'
  post 'users/login_confirmation' => 'sessions#confirmation'
  get 'users/logout'  => 'sessions#logout'

  # registration
  # http verb - 'resource/route' => mapped to a controller#method
  get 'users/register' => 'users#signup'
  post 'users/confirmation' => 'users#confirmation'

end
