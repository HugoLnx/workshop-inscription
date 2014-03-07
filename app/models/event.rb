class Event < ActiveRecord::Base
  has_and_belongs_to_many :participants

  def full?
    self.participants.count >= self.max_participants
  end
end
