class AddRockgymidColumnToReviews < ActiveRecord::Migration
  def change
  	column_add :reviews, :rockgym_id, :integer
  end
end
