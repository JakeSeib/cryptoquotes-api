class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :text, :author, :title, :cipher, :difficulty
  has_one :user
end
