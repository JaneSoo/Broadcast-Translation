class Request < ApplicationRecord
  include AASM

  aasm :column => 'status' do
  end
  belongs_to :translator
  belongs_to :broadcast_room
  belongs_to :user

  include AASM

  aasm :column => 'status' do
    state :submitted, :initial => true
    state :rejected
    state :approved

    event :rejecting do
      transitions :from => :submitted, :to => :rejected
    end

    event :approving do
      transitions :from => :submitted, :to => :approved
    end
  end

end
