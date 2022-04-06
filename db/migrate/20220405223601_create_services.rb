class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :name
      t.string :service_type
      t.boolean :subscribed

      t.timestamps
    end
  end
end
