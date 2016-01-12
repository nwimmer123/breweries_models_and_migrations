class AddFoundingToBrewers < ActiveRecord::Migration
  def change
    add_column :brewers, :founding_date, :integer
  end
end
