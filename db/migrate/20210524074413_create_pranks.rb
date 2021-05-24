class CreatePranks < ActiveRecord::Migration[6.0]
  def change
    create_table :pranks do |t|
      t.string :name
      t.text :content
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
