class Aposta < ApplicationRecord
  belongs_to :apostador
  has_many :apostaitems
end
