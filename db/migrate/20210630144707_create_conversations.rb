class CreateConversations < ActiveRecord::Migration[6.1]
  def change
    create_table :conversations do |t|
      t.integer :participants, array: true, null: false, default: []

      t.timestamps
    end
  end
end
