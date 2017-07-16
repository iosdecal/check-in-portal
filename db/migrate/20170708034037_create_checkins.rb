class CreateCheckins < ActiveRecord::Migration[5.1]
  def change
    create_table :checkins do |t|
      t.integer :week
      t.string :user_sid
      t.string :buddy_sid
      t.boolean :is_mirror, default: false
      t.timestamps
    end

    add_index(:checkins, [:week, :user_sid, :buddy_sid], :unique => true)
  end
end
