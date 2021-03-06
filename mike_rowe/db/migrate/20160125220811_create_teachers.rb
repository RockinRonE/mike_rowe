class CreateTeachers < ActiveRecord::Migration
  enable_extension "hstore"
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.boolean :admin, default: false

      t.timestamps null: false
    end
  end
end
