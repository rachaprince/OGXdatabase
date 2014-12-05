class AddHomeCommentsToTraineeships < ActiveRecord::Migration
  def change
  	add_column :traineeships, :homelc_comments, :string
  	add_column :traineeships, :rate_homelc, :integer
  	add_column :traineeships, :region, :string
  	add_column :traineeships, :country, :string

  end
end
