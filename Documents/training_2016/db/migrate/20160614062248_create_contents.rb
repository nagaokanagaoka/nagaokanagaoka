class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.text :content
      t.integer :diary_id

      t.timestamps null: false
    end
  end
end
