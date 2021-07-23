class Task
  attr_accessor :title, :description, :done

  def initialize(attrs = {})
    @id = attrs[:id]
    @title = attrs[:title]
    @description = attrs[:description]
    @done = attrs[:done]
  end

  def self.all
    tasks = DB.execute("SELECT * FROM tasks")
    tasks.map do |task|
      Task.new(
        id: task["id"],
        title: task["title"],
        description: task["description"],
        done: task["done"],
      )
    end
  end

  def self.find(id)
    results = DB.execute("SELECT * FROM tasks WHERE id = ?", id)
    Task.new(
      id: results[0]["id"],
      title: results[0]["title"],
      description: results[0]["description"],
      done: results[0]["done"],
    )
  end

  def save
    if @id.nil?
      create
    else
      update
    end
  end

  def destroy
    DB.execute("DELETE FROM tasks WHERE id = #{@id}")
  end
  

  private

  def create
    DB.execute("INSERT INTO tasks (title, description, done)
                VALUES ('#{@title}', '#{@description}', '#{@done}')")
    @id = DB.last_insert_row_id
  end

  def update
    DB.execute("UPDATE tasks
                SET title = '#{@title}', description = '#{@description}', done = '#{@done}'
                WHERE id = #{@id}")
  end
end
