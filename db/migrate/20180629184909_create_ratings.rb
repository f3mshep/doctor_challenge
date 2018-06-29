class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :score
      t.text :review_text
      t.belongs_to :doctor, foreign_key: true

      t.timestamps
    end
  end
end
