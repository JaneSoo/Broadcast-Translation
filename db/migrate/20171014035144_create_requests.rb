class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.string :status, default: 'submitted'
      t.references :translator, foreign_key: true
      t.references :broadcast_room, foreign_key: true
      t.references :user, foreign_key: true, default: nil

      t.timestamps
    end
  end
end
