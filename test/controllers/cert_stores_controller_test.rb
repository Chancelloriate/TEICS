require 'test_helper'

class CertStoresControllerTest < ActionController::TestCase
  setup do
    @cert_store = cert_stores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cert_stores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cert_store" do
    assert_difference('CertStore.count') do
      post :create, cert_store: { CertStoreDescription: @cert_store.CertStoreDescription, CertStoreExpirationDate: @cert_store.CertStoreExpirationDate, CertStoreId: @cert_store.CertStoreId, CertStoreName: @cert_store.CertStoreName, CertStorePassword: @cert_store.CertStorePassword, CreatedBy: @cert_store.CreatedBy, CreatedDate: @cert_store.CreatedDate, EnvironmentId: @cert_store.EnvironmentId, IdentityTypeId: @cert_store.IdentityTypeId, IsDeleted: @cert_store.IsDeleted, LastModifiedBy: @cert_store.LastModifiedBy, LastModifiedDate: @cert_store.LastModifiedDate, MimeType: @cert_store.MimeType, SourceId: @cert_store.SourceId, UNC: @cert_store.UNC }
    end

    assert_redirected_to cert_store_path(assigns(:cert_store))
  end

  test "should show cert_store" do
    get :show, id: @cert_store
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cert_store
    assert_response :success
  end

  test "should update cert_store" do
    patch :update, id: @cert_store, cert_store: { CertStoreDescription: @cert_store.CertStoreDescription, CertStoreExpirationDate: @cert_store.CertStoreExpirationDate, CertStoreId: @cert_store.CertStoreId, CertStoreName: @cert_store.CertStoreName, CertStorePassword: @cert_store.CertStorePassword, CreatedBy: @cert_store.CreatedBy, CreatedDate: @cert_store.CreatedDate, EnvironmentId: @cert_store.EnvironmentId, IdentityTypeId: @cert_store.IdentityTypeId, IsDeleted: @cert_store.IsDeleted, LastModifiedBy: @cert_store.LastModifiedBy, LastModifiedDate: @cert_store.LastModifiedDate, MimeType: @cert_store.MimeType, SourceId: @cert_store.SourceId, UNC: @cert_store.UNC }
    assert_redirected_to cert_store_path(assigns(:cert_store))
  end

  test "should destroy cert_store" do
    assert_difference('CertStore.count', -1) do
      delete :destroy, id: @cert_store
    end

    assert_redirected_to cert_stores_path
  end
end
