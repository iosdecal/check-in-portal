class AddCommentToCheckins < ActiveRecord::Migration[5.1]
  def change
  	add_column :checkins, :comment, :string
  end
end
