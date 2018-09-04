class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.integer :mileage
      t.string :delivery_city
      t.string :transport_type
      t.integer :price
      t.text :terms_transport
      t.integer :weight_package
      t.integer :volume_package
      t.string :package_type

      t.timestamps
    end
  end
end
