class CreateDiaries < ActiveRecord::Migration
  def change
    create_table :diaries do |t|
      t.integer :writer_id
      t.integer :theme_id

      t.timestamps null: false
    end
  end
end
