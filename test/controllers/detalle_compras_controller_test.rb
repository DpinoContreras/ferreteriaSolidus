require 'test_helper'

class DetalleComprasControllerTest < ActionController::TestCase
  setup do
    @detalle_compra = detalle_compras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detalle_compras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detalle_compra" do
    assert_difference('DetalleCompra.count') do
      post :create, detalle_compra: { cantidadProducto: @detalle_compra.cantidadProducto, numeroVenta: @detalle_compra.numeroVenta, precioUnitario: @detalle_compra.precioUnitario, precioVenta: @detalle_compra.precioVenta, reference: @detalle_compra.reference }
    end

    assert_redirected_to detalle_compra_path(assigns(:detalle_compra))
  end

  test "should show detalle_compra" do
    get :show, id: @detalle_compra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detalle_compra
    assert_response :success
  end

  test "should update detalle_compra" do
    patch :update, id: @detalle_compra, detalle_compra: { cantidadProducto: @detalle_compra.cantidadProducto, numeroVenta: @detalle_compra.numeroVenta, precioUnitario: @detalle_compra.precioUnitario, precioVenta: @detalle_compra.precioVenta, reference: @detalle_compra.reference }
    assert_redirected_to detalle_compra_path(assigns(:detalle_compra))
  end

  test "should destroy detalle_compra" do
    assert_difference('DetalleCompra.count', -1) do
      delete :destroy, id: @detalle_compra
    end

    assert_redirected_to detalle_compras_path
  end
end
