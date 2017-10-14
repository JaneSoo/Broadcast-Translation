class Request < ApplicationRecord
  belongs_to :translator
  belongs_to :broadcast_room
  belongs_to :user
end
