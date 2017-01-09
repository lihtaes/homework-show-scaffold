Rails.application.routes.draw do
  resources :final_tests
  resources :test_templates
  resources :post_templates
  resources :showtimes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
