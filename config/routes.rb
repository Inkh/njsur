Rails.application.routes.draw do
  get 'survey/landing'

  get '/' => 'survey#index'

  get 'landing/:answer' => 'survey#landing'

  post 'boolean' => 'survey#boolean'

  post 'submit' => 'survey#submit'
  
  get 'survey/result'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
