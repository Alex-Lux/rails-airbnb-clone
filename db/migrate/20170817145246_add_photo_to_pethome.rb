class AddPhotoToPethome < ActiveRecord::Migration[5.1]
  def change
    add_column :pethomes, :photo, :string
  end
end
