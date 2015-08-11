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
end