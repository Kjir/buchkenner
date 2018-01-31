class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.text :comment
      t.integer :rating
      t.references :user, foreign_key: true
      t.references :book, foreign_key: true
      t.index [:book_id, :user_id], unique: true

      t.timestamps
    end
  end
end
