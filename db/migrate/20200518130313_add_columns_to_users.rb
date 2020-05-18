class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :first_name, :last_name, :phone, :string
  end
end
