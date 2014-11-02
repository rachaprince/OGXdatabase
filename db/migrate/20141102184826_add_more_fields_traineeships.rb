class AddMoreFieldsTraineeships < ActiveRecord::Migration
  def change
  	add_column :traineeships, :tn_type, :string
  	add_column :traineeships, :lc_comments, :text
  end
end
