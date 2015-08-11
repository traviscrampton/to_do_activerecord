require('rspec')
require('to_do')

describe(Task) do


  describe('#description') do
    it("gives description") do
      test_task=Task.new("wash the dog")
      expect(test_task.description()).to(eq("wash the dog"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Task.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a task to the array of saved tasks") do
      test_task = Task.new("clean the porch")
      test_task.save()
      expect(Task.all()).to(eq([test_task]))
    end
  end

  describe(".clear") do
    it("empties saved tasks") do
      Task.new("wash the car").save()
      Task.clear()
      expect(Task.all()).to(eq([]))
    end
  end

  before() do
    Task.clear()
  end
end
