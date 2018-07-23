class AddInputOutputToJavaJprogresses < ActiveRecord::Migration[5.2]
  def change
    add_column :java_jprogresses, :input, :text
    add_column :java_jprogresses, :output, :text
  end
end
