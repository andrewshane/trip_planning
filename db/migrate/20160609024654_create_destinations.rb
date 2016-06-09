class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :comments
      t.string :country
      t.string :destination

      t.timestamps

    end
  end
end
