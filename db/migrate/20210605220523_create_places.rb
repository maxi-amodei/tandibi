class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.string :locale, null: false
      t.point :coordinate
      t.string :name, null: false
      t.string :place_type, null: false

      t.timestamps
    end
    add_index :places, :locale
  end
end
