class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :pethome, foreign_key: true
      t.date :starting_date
      t.date :ending_date
      t.string :status

      t.timestamps
    end
  end
end
