require 'test_helper'

class CertStoreLinksControllerTest < ActionController::TestCase
  setup do
    @cert_store_link = cert_store_links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cert_store_links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cert_store_link" do
    assert_difference('CertStoreLink.count') do
      post :create, cert_store_link: { CertStoreId: @cert_store_link.CertStoreId, CertStoreLinkId: @cert_store_link.CertStoreLinkId, CreatedBy: @cert_store_link.CreatedBy, CreatedDate: @cert_store_link.CreatedDate, IsDeleted: @cert_store_link.IsDeleted, LastModifiedBy: @cert_store_link.LastModifiedBy, LastModifiedDate: @cert_store_link.LastModifiedDate, SourceLinkId: @cert_store_link.SourceLinkId }
    end

    assert_redirected_to cert_store_link_path(assigns(:cert_store_link))
  end

  test "should show cert_store_link" do
    get :show, id: @cert_store_link
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cert_store_link
    assert_response :success
  end

  test "should update cert_store_link" do
    patch :update, id: @cert_store_link, cert_store_link: { CertStoreId: @cert_store_link.CertStoreId, CertStoreLinkId: @cert_store_link.CertStoreLinkId, CreatedBy: @cert_store_link.CreatedBy, CreatedDate: @cert_store_link.CreatedDate, IsDeleted: @cert_store_link.IsDeleted, LastModifiedBy: @cert_store_link.LastModifiedBy, LastModifiedDate: @cert_store_link.LastModifiedDate, SourceLinkId: @cert_store_link.SourceLinkId }
    assert_redirected_to cert_store_link_path(assigns(:cert_store_link))
  end

  test "should destroy cert_store_link" do
    assert_difference('CertStoreLink.count', -1) do
      delete :destroy, id: @cert_store_link
    end

    assert_redirected_to cert_store_links_path
  end
end
