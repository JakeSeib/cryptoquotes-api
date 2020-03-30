class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :text, :author, :cipher, :difficulty
  has_one :user
end
