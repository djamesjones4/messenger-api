class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    drop_table('messages')
    create_table :messages do |t|
      t.string :content
      t.references :conversation, null: false, foreign_key: { to_table: :conversations }
      t.references :from_user, null: false, foreign_key: { to_table: :users }
      t.boolean :read

      t.timestamps
    end
  end
end
