class AddForeignKeyToYards < ActiveRecord::Migration[6.0]
  def change
    add_column :yards, :quarterback_id, :string
  end
end
