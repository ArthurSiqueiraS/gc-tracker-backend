class Challenge < ApplicationRecord
  has_many :char_challenges
  has_many :chars, through: :char_challenges
end
