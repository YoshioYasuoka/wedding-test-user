Rails.application.routes.draw do

  root 'top#index'
  get 'about' => 'top#about', as:'about'
  get 'law' => 'top#law', as:'law'
  get 'privacy' => 'top#privacy', as:'privacy'
  get 'faq' => 'top#faq', as:'faq' 
  get 'contact' => 'top#contact', as:'contact' 
   
  resources :examples
  resources :users
  resources :sessions
  
end
