class CreateMissions < ActiveRecord::Migration[5.2]
  def change
    create_table :missions do |t|
      t.string :title
      t.datetime :end_time
      t.string :priority

      t.timestamps
    end
  end
end
