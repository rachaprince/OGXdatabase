class AddRegionToTraineeships < ActiveRecord::Migration
  def change
    add_column :traineeships, :region, :string
  end
end
