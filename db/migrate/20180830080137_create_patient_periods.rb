class CreatePatientPeriods < ActiveRecord::Migration[5.0]
  def change
    create_table :patient_periods do |t|
      t.references :patient, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.timestamps
    end
  end
end
