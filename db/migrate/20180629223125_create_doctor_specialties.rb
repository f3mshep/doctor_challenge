class CreateDoctorSpecialties < ActiveRecord::Migration[5.2]
  def change
    create_table :doctor_specialties do |t|
      t.belongs_to :doctor, foreign_key: true
      t.belongs_to :specialty, foreign_key: true

      t.timestamps
    end
  end
end
