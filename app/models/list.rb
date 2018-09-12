class List < ApplicationRecord
  belongs_to :board
  has_many :tasks, dependent: :destroy

  def check_if_belongs_to_board
    if self.board_id?
      true
    else
      false
    end
  end
end
