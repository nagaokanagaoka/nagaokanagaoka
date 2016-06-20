class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.string :diary_id
      t.string :int

      t.timestamps null: false
    end
  end
end
