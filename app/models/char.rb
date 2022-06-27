class Char < ApplicationRecord
  has_many :char_challenges
  has_many :challenges, through: :char_challenges
end
