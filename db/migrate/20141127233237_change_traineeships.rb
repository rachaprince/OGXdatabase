class ChangeTraineeships < ActiveRecord::Migration
  def change
  	
  	remove_column :traineeships, :country_id
  	remove_column :traineeships, :lc_id
  	remove_column :traineeships, :region_id
  end
end
