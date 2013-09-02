class CreateProficiency < ActiveRecord::Migration
  def change
    create_table :proficiencies do |t|
      t.integer :user_id
      t.integer :skill_id
      t.integer :rating
      t.timestamps
    end
  end
end
