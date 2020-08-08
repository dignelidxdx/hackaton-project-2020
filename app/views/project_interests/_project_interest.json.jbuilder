json.extract! project_interest, :id, :project_id, :user_id, :favorite, :interest, :status, :created_at, :updated_at
json.url project_interest_url(project_interest, format: :json)
