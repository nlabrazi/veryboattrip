class RemovForeignKeyReviewsToDeals < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :deals, :reviews
    remove_column :deals, :review_id
  end
end
