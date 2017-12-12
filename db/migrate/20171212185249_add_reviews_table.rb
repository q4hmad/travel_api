class AddReviewsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.column :content_body, :text
      t.column :rating, :integer
      t.column :author, :string
      t.column :destination_id, :integer
    end
  end
end
