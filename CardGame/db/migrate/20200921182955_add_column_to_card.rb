class AddColumnToCard < ActiveRecord::Migration[6.0]
  def change

    add_column :cards, :ability, :string

  end
end
