class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.string :name
      t.string :location
      t.integer :sat
      t.integer :gpa
      t.integer :social
      t.integer :athletics
    end
  end
end
