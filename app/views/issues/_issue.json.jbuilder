json.extract! issue, :id, :title, :description, :status, :created_at, :updated_at
json.url issue_url(issue, format: :json)
