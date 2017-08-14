class CreatePethomes < ActiveRecord::Migration[5.1]
  def change
    create_table :pethomes do |t|
      t.string :address
      t.string :bedrooms
      t.string :guests

      t.timestamps
    end
  end
end
