class AddDetailsToBeers < ActiveRecord::Migration
  def change
    add_column :beers, :manufacturer, :string
    add_column :beers, :first_brewed_in, :date
    add_column :beers, :origin_country, :string
    add_column :beers, :alcohol, :float
  end
end
