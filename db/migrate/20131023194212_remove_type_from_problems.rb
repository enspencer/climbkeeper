class RemoveTypeFromProblems < ActiveRecord::Migration
  def change
  	remove_column :problems, :type
  end
end
