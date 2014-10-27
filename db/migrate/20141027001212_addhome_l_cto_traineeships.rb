class AddhomeLCtoTraineeships < ActiveRecord::Migration
  def change
  	change_column :traineeships, :home_lc, :string
  end
end
