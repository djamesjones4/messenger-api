class Conversations < ActiveRecord::Migration[6.1]
  def change
    drop_table('conversations')
    create_table :conversations do |t|
      t.text :participants, default: '[]'
      t.timestamps
    end
  end
end
