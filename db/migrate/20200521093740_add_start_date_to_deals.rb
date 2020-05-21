class AddStartDateToDeals < ActiveRecord::Migration[6.0]
  def change
    add_column :deals, :start_date, :date
  end
end
