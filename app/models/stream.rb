# frozen_string_literal: true

# :nodoc:
class Stream < ApplicationRecord
  has_paper_trail
  extend FriendlyId
  friendly_id :name, use: %i[slugged scoped], scope: :organization
  belongs_to :organization

  has_many_attached :snapshots
end
