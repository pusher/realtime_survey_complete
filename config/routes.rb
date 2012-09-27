RealtimeSurvey::Application.routes.draw do
  root :to => "survey_entries#index"
  
  match "/survey_entries/reset" => "survey_entries#reset"

  resources :survey_entries

end