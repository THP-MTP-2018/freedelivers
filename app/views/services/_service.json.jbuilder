json.extract! service, :id, :mileage, :delivery_city, :transport_type, :price, :terms_transport, :weight_package, :volume_package, :package_type, :created_at, :updated_at
json.url service_url(service, format: :json)
