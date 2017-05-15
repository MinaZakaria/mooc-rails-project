class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user, index: true, foreign_key: true
      t.references :lecture, index: true, foreign_key: true
      t.text :comment_text

      t.timestamps null: false
    end
  end
end
