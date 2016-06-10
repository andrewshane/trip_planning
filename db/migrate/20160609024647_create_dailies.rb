class CreateDailies < ActiveRecord::Migration
  def change
    create_table :dailies do |t|
      t.belongs_to :destination, index: true
      t.string :destination_id
      t.string :location
      t.string :comments
      t.string :activity
      t.string :day

      t.timestamps

    end
  end
end
