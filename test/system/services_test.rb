require "application_system_test_case"

class ServicesTest < ApplicationSystemTestCase
  setup do
    @service = services(:one)
  end

  test "visiting the index" do
    visit services_url
    assert_selector "h1", text: "Services"
  end

  test "creating a Service" do
    visit services_url
    click_on "New Service"

    fill_in "Delivery City", with: @service.delivery_city
    fill_in "Mileage", with: @service.mileage
    fill_in "Package Type", with: @service.package_type
    fill_in "Price", with: @service.price
    fill_in "Terms Transport", with: @service.terms_transport
    fill_in "Transport Type", with: @service.transport_type
    fill_in "Volume Package", with: @service.volume_package
    fill_in "Weight Package", with: @service.weight_package
    click_on "Create Service"

    assert_text "Service was successfully created"
    click_on "Back"
  end

  test "updating a Service" do
    visit services_url
    click_on "Edit", match: :first

    fill_in "Delivery City", with: @service.delivery_city
    fill_in "Mileage", with: @service.mileage
    fill_in "Package Type", with: @service.package_type
    fill_in "Price", with: @service.price
    fill_in "Terms Transport", with: @service.terms_transport
    fill_in "Transport Type", with: @service.transport_type
    fill_in "Volume Package", with: @service.volume_package
    fill_in "Weight Package", with: @service.weight_package
    click_on "Update Service"

    assert_text "Service was successfully updated"
    click_on "Back"
  end

  test "destroying a Service" do
    visit services_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Service was successfully destroyed"
  end
end
