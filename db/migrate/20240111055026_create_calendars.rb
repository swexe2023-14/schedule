class CreateCalendars < ActiveRecord::Migration[7.0]
  def change
    create_table :calendars do |t|
      t.integer :group_id
      t.integer :event_id

      t.timestamps
    end
  end
end
