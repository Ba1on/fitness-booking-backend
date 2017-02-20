class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.timestamps
      t.string :name
      t.references(:office, index: true)
    end
  end
end
