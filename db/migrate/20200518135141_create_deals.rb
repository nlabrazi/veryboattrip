class CreateDeals < ActiveRecord::Migration[6.0]
  def change
    create_table :deals do |t|
      t.references :user, null: false, foreign_key: true
      t.references :boat, null: false, foreign_key: true
      t.references :review, null: false, foreign_key: true
      t.date :date
      t.string :status

      t.timestamps
    end
  end
end
