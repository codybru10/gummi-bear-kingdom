class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.column :review, :string
      t.column :author, :string

      t.timestamps
    end
  end
end
