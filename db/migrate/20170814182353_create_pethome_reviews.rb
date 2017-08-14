class CreatePethomeReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :pethome_reviews do |t|
      t.references :booking, foreign_key: true
      t.integer :rating
      t.string :comment

      t.timestamps
    end
  end
end
