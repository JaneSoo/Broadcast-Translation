class DeleteStatusFromRequest < ActiveRecord::Migration[5.1]
  def change
    remove_column :requests, :status
  end
end
