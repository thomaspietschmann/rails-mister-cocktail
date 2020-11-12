class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  # validates :description, uniqueness: { scope: %i[cocktail_id ingredient_id], message: 'no unique combination with cocktail and ingredient' }
  validates :ingredient, uniqueness: { scope: :cocktail }
end
