Rails.application.routes.draw do
  get 'thank' => 'survey#thank'

  get 'survey/landing'

  get '/' => 'survey#index'

  get 'landing/:answer' => 'survey#landing'

  post 'boolean' => 'survey#boolean'

  post 'submit_yes' => 'survey#submit_yes'

  post 'submit_no' => 'survey#submit_no'

  get 'survey/result'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
