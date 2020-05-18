class CreateExtraJointures < ActiveRecord::Migration[6.0]
  def change
    create_table :extra_jointures do |t|
      t.references :extra, null: false, foreign_key: true
      t.references :deal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
