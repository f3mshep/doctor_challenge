class AddAverageScoreToDoctors < ActiveRecord::Migration[5.2]
  def change
    add_column :doctors, :average_score, :float
  end
end
