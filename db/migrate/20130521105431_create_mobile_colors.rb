class CreateMobileColors < ActiveRecord::Migration
  def change
    create_table :mobile_colors do |t|
      t.integer :mobile_id
      t.integer :color_id

      t.timestamps
    end
  end
end
