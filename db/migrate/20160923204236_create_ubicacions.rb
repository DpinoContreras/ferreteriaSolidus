class CreateUbicacions < ActiveRecord::Migration
  def change
    create_table :ubicacions do |t|
      t.integer :comunaUbicacion
      t.integer :direccionUbicacion

      t.timestamps null: false
    end
  end
end
