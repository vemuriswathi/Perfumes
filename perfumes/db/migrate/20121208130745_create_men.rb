class CreateMen < ActiveRecord::Migration
  def change
    create_table :men do |t|
      t.string :Product_name
      t.string :Image_url
      t.text :Description
      t.decimal :Price

      t.timestamps
    end
  end
end
