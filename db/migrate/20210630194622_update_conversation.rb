class UpdateConversation < ActiveRecord::Migration[6.1]
  def change
    drop_table('conversations')
    create_table :conversations do |t|
      t.text :participants, unique: true
      t.timestamps
    end
  end
end
