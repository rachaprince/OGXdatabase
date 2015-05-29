class AddVisaToTraineeships < ActiveRecord::Migration
  def change
    add_column :traineeships, :visa, :integer
    add_column :traineeships, :culture, :integer
  end
end
