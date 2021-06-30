class AddCnversationToMessages < ActiveRecord::Migration[6.1]
  def change
    add_reference :messages, :conversation, null: false, foreign_key: { to_table: :conversations }
  end
end
