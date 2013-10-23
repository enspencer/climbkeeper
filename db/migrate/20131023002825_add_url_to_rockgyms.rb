class AddUrlToRockgyms < ActiveRecord::Migration
  def change
  	add_column :rockgyms, :url, :string
  end
end
