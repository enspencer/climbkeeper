class AddRockgymidColumnToReviews < ActiveRecord::Migration
  def change
  	add_column :reviews, :rockgym_id, :integer
  end
end
