class AddAttachementAvatarToProblems < ActiveRecord::Migration
  def change
    add_column :problems, :avatar, :attachment
  end
end
