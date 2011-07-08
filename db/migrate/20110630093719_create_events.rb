class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :event_name
      t.string :event_type
      t.date :start_date
      t.date :end_date
      t.text :event_dscrip
      t.integer :author_id

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
