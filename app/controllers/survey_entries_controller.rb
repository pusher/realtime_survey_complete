class SurveyEntriesController < ApplicationController
  
  def index
    @survey_entries = SurveyEntry.get_results
    @app_key = Pusher.key
  end

  def create
    SurveyEntry.create(:choice => params[:choice])
    Pusher['survey-channel'].trigger('data-changed', SurveyEntry.get_results.to_json)
    
    redirect_to '/'
  end

  def reset

	settings = YAML.load_file("#{Rails.root}/config/config.yml")[RAILS_ENV]
    @notice = 'Enter the secret password!'

	if params[:password] == settings['reset_password'] 
  		SurveyEntry.delete_all
    	redirect_to '/'
    elsif params[:password]
    	@notice = 'Wrong password!'
  	end
  end

end