class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.references(:trainer, index: true)
      t.timestamps
    end
  end
end
