class CreateYards < ActiveRecord::Migration[6.0]
  def change
    create_table :yards do |t|
      t.integer :highest
      t.integer :lowest

      t.timestamps
    end
  end
end
