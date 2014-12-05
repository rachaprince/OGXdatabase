class RatelcTraineeships < ActiveRecord::Migration
  def change
  	add_column :traineeships, :rate_lc, :integer
  end
end
