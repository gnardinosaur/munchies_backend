class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :price
      t.string :img_url

      t.timestamps
    end
  end
end
