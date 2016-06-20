class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.integer :job_id
      t.string :job_title

      t.timestamps null: false
    end
  end
end
