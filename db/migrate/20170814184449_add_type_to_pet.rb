class AddTypeToPet < ActiveRecord::Migration[5.1]
  def change
    add_column :pets, :type, :string
  end
end
