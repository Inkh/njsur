Rails.application.routes.draw do
  get 'thank' => 'survey#thank'

  get 'survey/landing'

  get '/' => 'survey#index'

  get 'landing/:answer' => 'survey#landing'

  post 'boolean' => 'survey#boolean'

  post 'submit_yes' => 'survey#submit_yes'

  get 'survey/result'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
