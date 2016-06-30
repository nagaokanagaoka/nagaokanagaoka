class CreateJobsUsers < ActiveRecord::Migration
  def change
    create_table :jobs_users do |t|
      t.integer :user_id
      t.integer :job_id

      t.timestamps null: false
    end
  end
end
