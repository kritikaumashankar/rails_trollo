require 'rails_helper'

RSpec.describe Board, type: :model do
  
  describe 'attributes' do
    it { should validate_uniqueness_of :name}
    it { should validate_presence_of :name}
  end

  describe "class_methods" do
    before(:each) do
      @board1 = Board.create(name: "Kritika")
      @board2 = Board.create(name: "Shiv")
      @board3 = Board.create(name: "Aanya")
    end

    it "sorts by name" do
      boards = Board.by_name
      expect(boards).to eq([@board3, @board1, @board2])
    end

  end

  describe "instance_methods" do
    before(:each) do
      @board1 = Board.create(name: "Kritika123")
    end

    it "name contains numeric values" do
      @board1.check_for_numeric
      expect(@board1.check_for_numeric).to eq(true)
    end
  end
end
