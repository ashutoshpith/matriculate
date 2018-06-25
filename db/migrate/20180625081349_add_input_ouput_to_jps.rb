class AddInputOuputToJps < ActiveRecord::Migration[5.2]
  def change
    add_column :jps, :input, :text
    add_column :jps, :output, :text
  end
end
