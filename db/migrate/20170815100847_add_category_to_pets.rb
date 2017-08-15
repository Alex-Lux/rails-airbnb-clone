class AddCategoryToPets < ActiveRecord::Migration[5.1]
  def change
    add_column :pets, :category, :string
  end
end
