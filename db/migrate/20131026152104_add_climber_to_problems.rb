class AddClimberToProblems < ActiveRecord::Migration
  def change
    add_reference :problems, :climber, index: true
  end
end
