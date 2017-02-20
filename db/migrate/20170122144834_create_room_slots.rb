class CreateRoomSlots < ActiveRecord::Migration[5.0]
  def change
    create_table :room_slots do |t|
      t.date :course_date
      t.time :start_at
      t.time :finish_at
      t.belongs_to :course, index: true

      t.timestamps
    end
  end
end
