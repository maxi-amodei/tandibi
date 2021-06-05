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
FactoryBot.define do
  factory :place do
    locale { "MyString" }
    coordinate { "" }
    name { "MyString" }
    place_type { "MyString" }
  end
end
