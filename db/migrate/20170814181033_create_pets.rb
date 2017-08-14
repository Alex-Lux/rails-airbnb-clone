class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.references :pethome, foreign_key: true
      t.string :breed
      t.string :name
      t.string :weight
      t.string :size
      t.string :color
      t.string :picture

      t.timestamps
    end
  end
end
