class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.integer :grade_id, null: false
      t.integer :subject_id, null: false
      t.string :category, null: false
      t.integer :release_id, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
