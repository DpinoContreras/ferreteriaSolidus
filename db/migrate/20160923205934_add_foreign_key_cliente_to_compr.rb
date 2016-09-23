class AddForeignKeyClienteToCompr < ActiveRecord::Migration
  def change
     add_foreign_key :compras, :clientes, column: :cliente_id, primary_key: "id"
  end
end
