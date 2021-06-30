class AddIndexToConvoParticipants < ActiveRecord::Migration[6.1]
  def change
    drop_table('conversations')
    create_table :conversations do |t|
      t.text :participants
      t.timestamps
    end
    add_index :conversations, :participants, unique: true
  end
end
