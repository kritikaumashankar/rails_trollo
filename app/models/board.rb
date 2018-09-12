class Board < ApplicationRecord
  
  has_many :lists, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  
  def self.by_name(direction = :asc)
    order(name: direction)
  end

  def check_for_numeric
    if self.name =~ /\d/         # Calling String's =~ method.
      true
    else
      false
    end
  end

end
