class CreateOffice < ActiveRecord::Migration[5.0]
  def change
    create_table :offices do |t|
      t.string :address
      t.timestamps
    end
  end
end
