class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date

      t.timestamps

      t.references :user, foreign_key: true
      t.references :pokemon, foreign_key: true
    end
  end
end
