class AddPictureToPethome < ActiveRecord::Migration[5.1]
  def change
    add_column :pethomes, :picture, :string
    add_column :pethomes, :observations, :text
  end
end
