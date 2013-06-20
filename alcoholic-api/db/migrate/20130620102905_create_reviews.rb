class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :content
      t.float :score
      t.references :user
      t.references :beer

      t.timestamps
    end
    add_index :reviews, :user_id
    add_index :reviews, :beer_id
  end
end
