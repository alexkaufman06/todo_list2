require("spec_helper")

describe(Task) do
  describe(".all") do
    it("is empty at first") do
      expect(Task.all()).to(eq([]))
    end
  end

  describe("#description") do
    it("lets you read the description out") do
      test_task = Task.new({:description => "learn latin", :list_id => 1, :due_date => '1984-05-01'})
      expect(test_task.description()).to(eq("learn latin"))
    end
  end

  describe("#list_id") do
    it("lets you read the list ID out") do
      test_task = Task.new({:description => "learn programming", :list_id => 1, :due_date => '1985-06-01'})
      expect(test_task.list_id()).to(eq(1))
    end
  end

  describe("#==") do
    it("is the same task if it has the same description") do
      task1 = Task.new({:description => "Learn karate", :list_id => 1, :due_date => '1988-05-01'})
      task2 = Task.new({:description => "Learn karate", :list_id => 1, :due_date => '1988-05-01'})
      expect(task1).to(eq(task2))
    end
  end

  describe("#save") do
    it("adds a task to the array of saved tasks") do
      test_task = Task.new({:description => "Read a book", :list_id => 1, :due_date => '1988-05-01'})
      test_task.save()
      expect(Task.all()).to(eq([test_task]))
    end
  end
end
