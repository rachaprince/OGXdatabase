class ChangeStringTextTraineeships < ActiveRecord::Migration
  def change
  	change_column :traineeships, :tn_comments, :text
  	change_column :traineeships, :aiesec_comments, :text
  end
end
