# == Schema Information
#
# Table name: places
#
#  id         :bigint           not null, primary key
#  coordinate :point
#  locale     :string           not null
#  name       :string           not null
#  place_type :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_places_on_locale  (locale)
#
class Place < ApplicationRecord
  PLACE_TYPES = [
    "restaurant",
    "coffee_shop",
    "mall",
    "hotel",
    "other",
  ].freeze
  validates :coordinate, :locale, :name, presence: true
  validates :place_type, inclusion: { in: PLACE_TYPES }
end
