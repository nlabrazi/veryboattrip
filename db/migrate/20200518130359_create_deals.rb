class CreateDeals < ActiveRecord::Migration[6.0]
  def change
    create_table :deals do |t|
      t.references, :user
      t.references, :boat
      t.references, :review
      t.date, :date
      t.string :status

      t.timestamps
    end
  end
end
