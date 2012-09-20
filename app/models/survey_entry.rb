class SurveyEntry < ActiveRecord::Base
	FORM_OPTIONS = ['Facebook', 'Twitter', 'LinkedIn', 'Google+', 'other']

	def self.get_results
		counts =  SurveyEntry .count({ :group => :choice })	

		FORM_OPTIONS.map do |o|
		  {
			'title' => o,
			'votes' => counts[o]||0
		  }
		end
	end

end