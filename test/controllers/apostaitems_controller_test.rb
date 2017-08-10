require 'test_helper'

class ApostaitemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apostaitem = apostaitems(:one)
  end

  test "should get index" do
    get apostaitems_url
    assert_response :success
  end

  test "should get new" do
    get new_apostaitem_url
    assert_response :success
  end

  test "should create apostaitem" do
    assert_difference('Apostaitem.count') do
      post apostaitems_url, params: { apostaitem: { aposta_id: @apostaitem.aposta_id, clube_id: @apostaitem.clube_id, colocacao: @apostaitem.colocacao } }
    end

    assert_redirected_to apostaitem_url(Apostaitem.last)
  end

  test "should show apostaitem" do
    get apostaitem_url(@apostaitem)
    assert_response :success
  end

  test "should get edit" do
    get edit_apostaitem_url(@apostaitem)
    assert_response :success
  end

  test "should update apostaitem" do
    patch apostaitem_url(@apostaitem), params: { apostaitem: { aposta_id: @apostaitem.aposta_id, clube_id: @apostaitem.clube_id, colocacao: @apostaitem.colocacao } }
    assert_redirected_to apostaitem_url(@apostaitem)
  end

  test "should destroy apostaitem" do
    assert_difference('Apostaitem.count', -1) do
      delete apostaitem_url(@apostaitem)
    end

    assert_redirected_to apostaitems_url
  end
end
