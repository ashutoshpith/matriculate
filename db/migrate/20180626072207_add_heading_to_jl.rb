class AddHeadingToJl < ActiveRecord::Migration[5.2]
  def change
    add_column :jls, :heading, :text
  end
end
