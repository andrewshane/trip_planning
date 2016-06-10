class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.belongs_to :user, index:true
      t.string :user_id
      t.string :comments
      t.string :country
      t.string :destination

      t.timestamps

    end
  end
end
