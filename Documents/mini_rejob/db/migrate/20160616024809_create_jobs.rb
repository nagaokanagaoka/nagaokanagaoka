class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.integer :job_type_detail_id
      t.text :detail
      t.integer :area_id

      t.timestamps null: false
    end
  end
end
