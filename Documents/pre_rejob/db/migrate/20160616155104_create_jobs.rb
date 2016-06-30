class CreateJobs < ActiveRecord::Migration

  def change
    create_table :jobs do |t|
      t.string :title
      t.text :detail
      t.string :area
      t.string :image_path

      t.timestamps null: false
    end
  end
end
