json.extract! producto, :id, :codigoProducto, :nombre, :precioCompra, :stock, :descripcion, :created_at, :updated_at
json.url producto_url(producto, format: :json)