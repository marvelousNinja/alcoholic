class AddUserReferenceToBeers < ActiveRecord::Migration
  def change
    change_table :beers do |t|
      t.references :user
    end
  end
end
