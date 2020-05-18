class CreateBoats < ActiveRecord::Migration[6.0]
  def change
    create_table :boats do |t|
      t.string :name
      t.string :type
      t.string :description
      t.references :user
      t.integer :size

      t.timestamps
    end
  end
end
