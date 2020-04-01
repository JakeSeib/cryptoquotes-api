# frozen_string_literal: true

class SolvedQuote < ApplicationRecord
  belongs_to :user
  belongs_to :quote
end
