class CreateQuarterbacks < ActiveRecord::Migration[6.0]
  def change
    create_table :quarterbacks do |t|
      t.string :team
      t.string :city
      t.string :name

      t.timestamps
    end
  end
end
