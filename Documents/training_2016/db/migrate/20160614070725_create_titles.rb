class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.string :title
      t.integer :diary_id

      t.timestamps null: false
    end
  end
end
