require 'test_helper'

class ServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service = services(:one)
  end

  test "should get index" do
    get services_url
    assert_response :success
  end

  test "should get new" do
    get new_service_url
    assert_response :success
  end

  test "should create service" do
    assert_difference('Service.count') do
      post services_url, params: { service: { delivery_city: @service.delivery_city, mileage: @service.mileage, package_type: @service.package_type, price: @service.price, terms_transport: @service.terms_transport, transport_type: @service.transport_type, volume_package: @service.volume_package, weight_package: @service.weight_package } }
    end

    assert_redirected_to service_url(Service.last)
  end

  test "should show service" do
    get service_url(@service)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_url(@service)
    assert_response :success
  end

  test "should update service" do
    patch service_url(@service), params: { service: { delivery_city: @service.delivery_city, mileage: @service.mileage, package_type: @service.package_type, price: @service.price, terms_transport: @service.terms_transport, transport_type: @service.transport_type, volume_package: @service.volume_package, weight_package: @service.weight_package } }
    assert_redirected_to service_url(@service)
  end

  test "should destroy service" do
    assert_difference('Service.count', -1) do
      delete service_url(@service)
    end

    assert_redirected_to services_url
  end
end
