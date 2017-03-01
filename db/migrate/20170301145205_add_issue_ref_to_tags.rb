class AddIssueRefToTags < ActiveRecord::Migration[5.0]
  def change
    add_reference :tags, :issue, foreign_key: true
  end
end
