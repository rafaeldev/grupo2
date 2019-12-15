Rails.application.routes.draw do
  get 'c' => 'pages#company_home'
  get 's' => 'pages#student_home'

  resources :companies
  resources :students
end
