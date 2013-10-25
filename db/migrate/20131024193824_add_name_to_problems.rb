class AddNameToProblems < ActiveRecord::Migration
  def change
  	add_column :problems, :name, :string, default: "no name!"
  end
end
