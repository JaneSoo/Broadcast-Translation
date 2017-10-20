class AddThumbnailToEvent < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :thumbnail, :string
  end
end
