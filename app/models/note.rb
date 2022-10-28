# frozen_string_literal: true

# A Note is a record that has a title and a body, and both of those attributes must be present.
class Note < ApplicationRecord
  belongs_to :board

  validates :name, presence: true
  validates :body, presence: true
end
