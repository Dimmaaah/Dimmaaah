class AddValueToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :value, :string
  end
end
