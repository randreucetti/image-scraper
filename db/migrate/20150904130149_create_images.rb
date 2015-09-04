class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.text :name
      t.binary :image
      t.references :page
      t.timestamps null: false
    end
  end
end
