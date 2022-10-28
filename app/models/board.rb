# frozen_string_literal: true

# Board is a class that inherits from ApplicationRecord.
class Board < ApplicationRecord
  has_many :notes, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
end
