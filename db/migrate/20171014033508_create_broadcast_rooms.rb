class CreateBroadcastRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :broadcast_rooms do |t|
      t.string :title
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
