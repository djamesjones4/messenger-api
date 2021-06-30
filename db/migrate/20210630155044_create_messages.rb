class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :content
      t.references :conversation, null: false, foreign_key: true
      t.references :from_user, null: false, foreign_key: true
      t.boolean :read

      t.timestamps
    end
  end
end
