class AddEditorToJavaJps < ActiveRecord::Migration[5.2]
  def change
    add_column :java_jps, :editor, :text
  end
end
