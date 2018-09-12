require 'rails_helper'

RSpec.describe List, type: :model do
  
  describe "instance_method" do
    before(:each) do
      @list = List.create(name: "Shopping",board_id: 1)
    end

    it "name contains numeric values" do
     # @list.check_if_belongs_to_board
      expect(@list.check_if_belongs_to_board).to eq(true)
    end
  end
end
