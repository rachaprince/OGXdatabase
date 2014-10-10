class CreateTraineeships < ActiveRecord::Migration
  def change
    create_table :traineeships do |t|
      t.date :start
      t.date :end
      t.string :name
      t.integer :evaluation
      t.string :notes

      t.timestamps
    end
  end
end
