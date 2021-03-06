require 'test_helper'

class ApostadoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apostador = apostadores(:one)
  end

  test "should get index" do
    get apostadores_url
    assert_response :success
  end

  test "should get new" do
    get new_apostador_url
    assert_response :success
  end

  test "should create apostador" do
    assert_difference('Apostador.count') do
      post apostadores_url, params: { apostador: { email: @apostador.email, nome: @apostador.nome } }
    end

    assert_redirected_to apostador_url(Apostador.last)
  end

  test "should show apostador" do
    get apostador_url(@apostador)
    assert_response :success
  end

  test "should get edit" do
    get edit_apostador_url(@apostador)
    assert_response :success
  end

  test "should update apostador" do
    patch apostador_url(@apostador), params: { apostador: { email: @apostador.email, nome: @apostador.nome } }
    assert_redirected_to apostador_url(@apostador)
  end

  test "should destroy apostador" do
    assert_difference('Apostador.count', -1) do
      delete apostador_url(@apostador)
    end

    assert_redirected_to apostadores_url
  end
end
