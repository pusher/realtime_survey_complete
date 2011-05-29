class CreateSurveyEntries < ActiveRecord::Migration
  def self.up
    create_table :survey_entries do |t|
      t.string :choice

      t.timestamps
    end
  end

  def self.down
    drop_table :survey_entries
  end
end
