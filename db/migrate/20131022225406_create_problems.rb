class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :type
      t.string :rating
      t.string :color
      t.belongs_to :rockgym
      t.timestamps
    end
  end
end
