class State < ApplicationRecord
  belongs_to :plant_type
  has_many :plants

  def plant_type_name
    self.plant_type.name + " - $" + self.cost.to_s
  end
end
