RealtimeSurvey::Application.routes.draw do
  root :to => "survey_entries#index"
  resources :survey_entries
end