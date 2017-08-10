require 'test_helper'

class ApostasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aposta = apostas(:one)
  end

  test "should get index" do
    get apostas_url
    assert_response :success
  end

  test "should get new" do
    get new_aposta_url
    assert_response :success
  end

  test "should create aposta" do
    assert_difference('Aposta.count') do
      post apostas_url, params: { aposta: { apostador_id: @aposta.apostador_id, pago: @aposta.pago } }
    end

    assert_redirected_to aposta_url(Aposta.last)
  end

  test "should show aposta" do
    get aposta_url(@aposta)
    assert_response :success
  end

  test "should get edit" do
    get edit_aposta_url(@aposta)
    assert_response :success
  end

  test "should update aposta" do
    patch aposta_url(@aposta), params: { aposta: { apostador_id: @aposta.apostador_id, pago: @aposta.pago } }
    assert_redirected_to aposta_url(@aposta)
  end

  test "should destroy aposta" do
    assert_difference('Aposta.count', -1) do
      delete aposta_url(@aposta)
    end

    assert_redirected_to apostas_url
  end
end
