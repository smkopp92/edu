class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :sat
      t.integer :gpa
      t.integer :social
      t.integer :athletics
      t.integer :user_id, null: false
    end
  end
end
