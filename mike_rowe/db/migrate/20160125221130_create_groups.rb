class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.references :teacher
      t.references :student
      t.string :date

      t.timestamps null: false
    end
  end
end
