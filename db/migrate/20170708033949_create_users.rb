class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users, id: false do |t|
      t.string :type
      t.string :name
      t.string :email
      t.primary_key :sid
      t.index :sid, :unique => true
      t.timestamps
    end
  end
end
