class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :date
      t.string :status
      t.text :description
      t.time :time
      t.references :user, null: false, foreign_key: true
      t.references :prank, null: false, foreign_key: true

      t.timestamps
    end
  end
end
