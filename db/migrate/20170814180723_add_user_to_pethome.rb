class AddUserToPethome < ActiveRecord::Migration[5.1]
  def change
    add_reference :pethomes, :user, foreign_key: true
  end
end
