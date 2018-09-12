class Task < ApplicationRecord
  belongs_to :list


  def self.by_priority(direction = :asc)
    order(priority: direction)
  end
end
