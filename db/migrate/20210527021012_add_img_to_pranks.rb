class AddImgToPranks < ActiveRecord::Migration[6.0]
  def change
    add_column :pranks, :img_url, :string
  end
end
