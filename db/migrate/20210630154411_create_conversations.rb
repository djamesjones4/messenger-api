class CreateConversations < ActiveRecord::Migration[6.1]
  def change
    drop_table('conversations')
    create_table :conversations do |t|
      t.integer :participants, array: true, null: false

      t.timestamps
    end
  end
end
