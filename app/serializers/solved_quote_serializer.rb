# frozen_string_literal: true

class SolvedQuoteSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :quote
end
