class RemoveReviewForeignKeyFromDeal2 < ActiveRecord::Migration[6.0]
  def change
    remove_column :deals, :review_id
  end
end
