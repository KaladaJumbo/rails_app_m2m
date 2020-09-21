class CreateDecks < ActiveRecord::Migration[6.0]
  def change
    create_table :decks do |t|
      t.string :name
      t.integer :card_count
      t.string :style
      t.string :decktype
      t.boolean :legal

      t.timestamps
    end
  end
end
