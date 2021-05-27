class AddCityToPranks < ActiveRecord::Migration[6.0]
  def change
    add_column :pranks, :city, :string
  end
end
