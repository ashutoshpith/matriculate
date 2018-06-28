class AddHeadingToJps < ActiveRecord::Migration[5.2]
  def change
    add_column :jps, :heading, :text
  end
end
