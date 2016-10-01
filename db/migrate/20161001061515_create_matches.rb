class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :profile_id
      t.integer :college_id

      t.timestamps null: false
    end
  end
end
