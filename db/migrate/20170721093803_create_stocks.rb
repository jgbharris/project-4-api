class CreateStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :stocks do |t|
      t.string :ticker
      t.string :name
      t.float :price_open
      t.float :price_close
      t.string :sector
      t.float :fifty_two_week_high
      t.float :fifty_two_week_low
      t.float :price_to_earnings
      t.float :price_to_book
      t.float :price_to_sales
      t.float :market_cap

      t.timestamps
    end
  end
end
