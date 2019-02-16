class AddTitleConstraintsToMission < ActiveRecord::Migration[5.2]
  def up
    change_column :missions, :title, :string, null: false, unique: true
  end

  def down
    change_column :missions, :title, :string
  end
end
