class CreateEventsParticipantsTable < ActiveRecord::Migration
  def change
    create_table :events_participants do |t|
      t.integer :event_id
      t.integer :participant_id
    end

    add_index :events_participants, :event_id
    add_index :events_participants, :participant_id
  end
end
