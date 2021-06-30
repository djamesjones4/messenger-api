class ChangeConversations < ActiveRecord::Migration[6.1]
  def change
    drop_table('conversations')
    create_table :conversations do |t|
      t.text :participants
      t.timestamps
    end
  end
end
