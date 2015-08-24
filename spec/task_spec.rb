require('spec_helper')

describe(Task) do

  describe("#list_id") do
    it("lets you read the list ID out") do
      test_task = Task.new({:description => "learn SQL", :list_id => 1})
      expect(test_task.list_id()).to(eq(1))
    end
  end

  describe(".not_done") do
    it("returns the not-done tasks") do
      not_done_task1 = Task.create({:description => "do it", :done => false})
      not_done_task2 = Task.create({:description => "don't do it", :done => false})
      not_done_tasks = [not_done_task1, not_done_task2]
      done_task = Task.create({:description => "a done task", :done => true})
      expect(Task.not_done()).to(eq(not_done_tasks))
    end
  end

  describe('#list') do
    it('tells which list the task belongs to') do
      test_list = List.create({:name => 'list'})
      test_task = Task.create({:description => 'task', :list_id => test_list.id()})
      expect(test_task.list()).to(eq(test_list))
    end
  end
end
