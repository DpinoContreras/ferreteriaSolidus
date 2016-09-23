json.extract! detalle_compra, :id, :numeroVenta, :reference, :cantidadProducto, :precioUnitario, :precioVenta, :created_at, :updated_at
json.url detalle_compra_url(detalle_compra, format: :json)