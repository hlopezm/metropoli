require 'test_helper'

class ProyectosControllerTest < ActionController::TestCase
  setup do
    @proyecto = proyectos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proyectos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proyecto" do
    assert_difference('Proyecto.count') do
      post :create, proyecto: { clave_obra: @proyecto.clave_obra, fecha_fin: @proyecto.fecha_fin, fecha_inicio: @proyecto.fecha_inicio, monto_autorizado: @proyecto.monto_autorizado, monto_solicitado: @proyecto.monto_solicitado, nombre: @proyecto.nombre, num_proyecto: @proyecto.num_proyecto, of_autorizacion: @proyecto.of_autorizacion }
    end

    assert_redirected_to proyecto_path(assigns(:proyecto))
  end

  test "should show proyecto" do
    get :show, id: @proyecto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proyecto
    assert_response :success
  end

  test "should update proyecto" do
    patch :update, id: @proyecto, proyecto: { clave_obra: @proyecto.clave_obra, fecha_fin: @proyecto.fecha_fin, fecha_inicio: @proyecto.fecha_inicio, monto_autorizado: @proyecto.monto_autorizado, monto_solicitado: @proyecto.monto_solicitado, nombre: @proyecto.nombre, num_proyecto: @proyecto.num_proyecto, of_autorizacion: @proyecto.of_autorizacion }
    assert_redirected_to proyecto_path(assigns(:proyecto))
  end

  test "should destroy proyecto" do
    assert_difference('Proyecto.count', -1) do
      delete :destroy, id: @proyecto
    end

    assert_redirected_to proyectos_path
  end
end
