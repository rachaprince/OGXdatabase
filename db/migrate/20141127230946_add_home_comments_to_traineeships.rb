class AddHomeCommentsToTraineeships < ActiveRecord::Migration
  def change
  	add_column :traineeships, :homelc_comments, :string
  	add_column :traineeships, :rate_homelc, :integer
  end
end
