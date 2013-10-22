class AddSkillToClimbers < ActiveRecord::Migration
  def change
  	add_column :climbers, :skill, :integer
  end
end
