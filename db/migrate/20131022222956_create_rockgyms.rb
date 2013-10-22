class CreateRockgyms < ActiveRecord::Migration
  def change
    create_table :rockgyms do |t|
      t.string :name
      t.timestamps
    end
  end
end
