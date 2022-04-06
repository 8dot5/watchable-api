class CreateWatchables < ActiveRecord::Migration[6.1]
  def change
    create_table :watchables do |t|
      t.string :title
      t.text :summary
      t.boolean :favorite
      t.string :rating
      t.string :poster_url
      t.string :trailer_url
      t.string :streaming

      # foreign keys
      t.integer :category_id
      t.integer :user_id
      t.integer :service_id

      t.timestamps
    end
  end
end
