#Initial setup of tables for the database
#Users has all user information
#Guestlists is for ordering people who are signed in by time
class SetupTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.belongs_to :queue, index: true
      t.string :fname
      t.string :lname
      t.string :email
      t.string :notes
    end

    create_table :guestlists do |t|
      t.timestamps null: false
      t.integer :user_id
    end

  end
end
