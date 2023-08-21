class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.text :review_text

      t.timestamps
      t.references :booking, foreign_key: true
    end
  end
end
