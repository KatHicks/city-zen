class AddTagRefToIssues < ActiveRecord::Migration[5.0]
  def change
    add_reference :issues, :tag, foreign_key: true
  end
end
