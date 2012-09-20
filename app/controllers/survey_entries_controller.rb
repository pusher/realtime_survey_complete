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
end