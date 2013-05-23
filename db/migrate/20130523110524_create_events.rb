class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :organizer
      t.string :place

      t.timestamps
    end
  end
end
