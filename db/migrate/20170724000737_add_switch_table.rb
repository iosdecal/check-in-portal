class AddSwitchTable < ActiveRecord::Migration[5.1]
  def change
    create_table :switches do |t|
      t.boolean :can_checkin, default: false
    end
  end
end
