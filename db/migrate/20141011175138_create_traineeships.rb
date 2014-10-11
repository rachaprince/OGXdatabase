class CreateTraineeships < ActiveRecord::Migration
  def change
    create_table :traineeships do |t|
      t.string :ep_name
      t.string :ep_email
      t.string :manager_name
      t.string :manager_email
      t.string :country
      t.string :lc
      t.string :tn_name
      t.date :start
      t.date :end
      t.integer :rate_lc
      t.integer :rate_tn
      t.string :tn_comments
      t.string :aiesec_comments

      t.timestamps
    end
  end
end
