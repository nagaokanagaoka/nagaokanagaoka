class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tag
      t.integer :diary_id

      t.timestamps null: false
    end
  end
end
