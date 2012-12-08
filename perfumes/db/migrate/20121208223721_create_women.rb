class CreateWomen < ActiveRecord::Migration
  def change
    create_table :women do |t|
      t.string :Product_name
      t.string :Image_url
      t.text :Description
      t.decimal :Price

      t.timestamps
    end
  end
end
