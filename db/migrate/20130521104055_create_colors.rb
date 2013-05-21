class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :name
      t.timestamps
    end
	Color.create!(:name => "White")
	Color.create!(:name => "Black")
	Color.create!(:name => "Purple")
	Color.create!(:name => "Blue")
  end
end
