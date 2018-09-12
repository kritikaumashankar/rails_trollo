require 'rails_helper'

RSpec.describe Task, type: :model do

  describe "class_methods" do
    before(:each) do
      @task1 = Task.create(description: "Milk", priority: 1,list_id: 1)
      @task2 = Task.create(description: "Eggs", priority: 3,list_id: 1)
      @task3 = Task.create(description: "Bread", priority: 2,list_id: 1)
    end

    it "sorts by priority by ascending" do
      tasks = Task.by_priority
      expect(tasks).to eq([@task1, @task3, @task2])
    end

    it "sorts by priority by descending" do
      tasks = Task.by_priority(:desc)
      expect(tasks).to eq([@task2, @task3, @task1])
    end

  end
end
