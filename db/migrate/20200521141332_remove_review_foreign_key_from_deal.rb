class RemoveReviewForeignKeyFromDeal < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :deals, column: :review_id
  end
end
