Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/course-results' => 'course_results#index'
  get '/course-results/courses_history' => 'course_results#courses_history'

  jsonapi_resources :course_results
  jsonapi_resources :source_providers
end
