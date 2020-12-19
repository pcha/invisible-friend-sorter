json.extract! participant, :id, :name, :mail, :telegram_user, :created_at, :updated_at
json.url participant_url(participant, format: :json)
