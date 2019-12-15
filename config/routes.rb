Rails.application.routes.draw do
  get 'c' => 'pages#company_home'
  get 's' => 'pages#student_home'

  resources :companies
  resources :students

  post 'students/skills/:id' => 'students#update_skills', as: 'student_update_skills'

  get 'companies/:id/fulfilled_jobs' => 'companies#fulfilled_jobs', as: 'show_fulfilled_jobs'
end
