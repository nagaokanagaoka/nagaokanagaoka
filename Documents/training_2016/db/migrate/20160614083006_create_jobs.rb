class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :job_type_id
      t.integer :Job_type_detail_id
      t.integer :Employment_id
      t.integer :characteristic_id
      t.integer :treatment_id
      t.integer :office_hour_id
      t.integer :experience_id

      t.timestamps null: false
    end
  end
end
