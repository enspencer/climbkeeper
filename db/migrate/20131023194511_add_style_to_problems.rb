class AddStyleToProblems < ActiveRecord::Migration
  def change
  	add_column :problems, :style, :string
  end
end
