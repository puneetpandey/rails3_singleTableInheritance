class CreateMobiles < ActiveRecord::Migration
  def change
    create_table :mobiles do |t|
      t.string :model
      t.string :manufacturer
      t.string :type
      t.string :operating_system

      t.timestamps
    end
  end
end
