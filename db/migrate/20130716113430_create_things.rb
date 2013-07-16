class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :name
      t.integer :value
      t.string :owner
      t.timestamps
    end
  end
end
