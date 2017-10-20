class Event < ApplicationRecord
  belongs_to :user

  mount_uploader :thumbnail, TumbnailUploader
end
