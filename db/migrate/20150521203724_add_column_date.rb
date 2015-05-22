class AddColumnDate < ActiveRecord::Migration
  def change
    add_column :show_listings, :date, :string
  end
end
