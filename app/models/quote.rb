# frozen_string_literal: true

class Quote < ApplicationRecord
  belongs_to :user
  has_many :solved_quotes, dependent: :destroy
end
