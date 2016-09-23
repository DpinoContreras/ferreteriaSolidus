class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :codigoProducto
      t.string :nombre
      t.string :precioCompra
      t.integer :stock
      t.text :descripcion

      t.timestamps null: false
    end
  end
end
