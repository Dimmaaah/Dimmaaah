class AddFinishdateToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :date, :integer
  end
end
