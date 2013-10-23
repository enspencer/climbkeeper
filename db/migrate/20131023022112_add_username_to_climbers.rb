class AddUsernameToClimbers < ActiveRecord::Migration
  def change
  	add_column :climbers, :username, :string
  end
end
