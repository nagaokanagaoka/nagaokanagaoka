class CreateJobTypeDetails < ActiveRecord::Migration
  def change
    create_table :job_type_details do |t|
      t.string :job_type_name
      t.integer :job_type_id

      t.timestamps null: false
    end
  end
end
