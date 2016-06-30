class CreateJobImages < ActiveRecord::Migration
  def change
    create_table :job_images do |t|
      t.references :job, null: false #外部キー
      t.binary :data, limit: 20.megabytes   #画像データ
      t.string :content_type         #MIMEタイプ

      t.timestamps
    end

    add_index :job_images, :job_id
  end
end
