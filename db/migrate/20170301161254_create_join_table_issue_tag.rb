class CreateJoinTableIssueTag < ActiveRecord::Migration[5.0]
  def change
    create_join_table :issues, :tags do |t|
      # t.index [:issue_id, :tag_id]
      # t.index [:tag_id, :issue_id]
    end
  end
end
