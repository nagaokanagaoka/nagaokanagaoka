class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :sex
      t.integer :age
      t.string :objective
      t.text :pr

      t.timestamps null: false
    end
  end
end
