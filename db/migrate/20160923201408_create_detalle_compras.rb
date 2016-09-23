class CreateDetalleCompras < ActiveRecord::Migration
  def change
    create_table :detalle_compras do |t|
      t.integer :numeroVenta
      t.references :Producto
      t.integer :cantidadProducto
      t.integer :precioUnitario
      t.integer :precioVenta

      t.timestamps null: false
    end
  end
end
