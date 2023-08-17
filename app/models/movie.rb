# frozen_string_literal: true

class Movie < ApplicationRecord
  validates :title, presence: true
  validates :overview, presence: true, uniqueness: { scope: :title }

  has_many :bookmarks
end
