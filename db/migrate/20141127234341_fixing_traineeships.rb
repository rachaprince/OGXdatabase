class FixingTraineeships < ActiveRecord::Migration
  def change
  	add_column :traineeships, :lc, :string
  	remove_column :traineeships, :country_id
  	remove_column :traineeships, :lc_id
  	remove_column :traineeships, :region_id
  end
end