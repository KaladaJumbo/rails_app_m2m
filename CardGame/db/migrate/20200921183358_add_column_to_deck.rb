class AddColumnToDeck < ActiveRecord::Migration[6.0]
  def change

    add_column :decks, :card_id, :integer
    add_column :decks, :player_id, :integer

  end
end
