class CreateOfficeHours < ActiveRecord::Migration
  def change
    create_table :office_hours do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
