class Participant
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :mail, type: String
  field :telegram_user, type: String
  field :friend, type: BSON::ObjectId
end
