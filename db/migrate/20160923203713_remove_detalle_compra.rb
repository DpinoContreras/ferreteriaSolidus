class RemoveDetalleCompra < ActiveRecord::Migration
  def change
    remove_column :detalle_compras, :numeroVenta
  end
end
