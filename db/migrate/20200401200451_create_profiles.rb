class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.belongs_to :user
      t.string :fname
      t.string :lname
      t.datetime :bdate
      t.string :username
      t.timestamps
    end
  end
end
