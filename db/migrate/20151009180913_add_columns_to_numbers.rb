class AddColumnsToNumbers < ActiveRecord::Migration
  def change
  	change_table :numbers do |t|
  		t.float :value
  	end
  end
end
