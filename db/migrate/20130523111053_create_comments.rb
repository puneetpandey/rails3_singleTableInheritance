class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
	  t.references :commendable, :polymorphic => true
      t.timestamps
    end
  end
end
