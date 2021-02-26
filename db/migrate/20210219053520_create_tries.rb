class CreateTries < ActiveRecord::Migration[6.0]
  def change
    create_table :tries do |t|
      t.references :user, null: false, foreign_key: true
      t.references :content, null: false, foreign_key: true
      t.timestamps
      t.index [:user_id, :content_id], unique: true
    end
  end
end
