class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.integer :cost
      t.string :element_type
      t.string :card_type
      t.string :set_name
      t.string :description
      t.integer :power
      t.integer :toughness

      t.timestamps
    end
  end
end
