class AddObservationsToPet < ActiveRecord::Migration[5.1]
  def change
    add_column :pets, :observations, :text
  end
end
