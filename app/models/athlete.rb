class Athlete < ActiveRecord::Base
  has_many :meets
  has_many :line_items
  validates :athleteNum, :firstName, :lastName, :birthYear, presence: true
  validates :athleteNum, numericality: {greaterthan_or_equal_to: 1}
  validates :athleteNum, uniqueness: true
  validates :birthYear,  format: {
    with: /(19|20)\d{2}/i,
    message: "should be a four-digit year"
  }
end
