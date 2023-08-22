class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :text
      t.integer :rating

      t.timestamps

      t.references :booking, foreign_key: true
    end
  end
end
