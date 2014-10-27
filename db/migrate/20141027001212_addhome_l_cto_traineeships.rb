class AddhomeLCtoTraineeships < ActiveRecord::Migration
  def change
  	add_column :traineeships, :home_lc, :string
  end
end
