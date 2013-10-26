class AddRatingstringToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :rating_string, :string
  end
end
