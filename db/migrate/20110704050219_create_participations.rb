class CreateParticipations < ActiveRecord::Migration
  def self.up
    create_table :participations do |t|
      t.text :remarks
      t.references :user
      t.references :event

      t.timestamps
    end
  end

  def self.down
    drop_table :participations
  end
end
