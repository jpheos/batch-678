require "sqlite3"
DB = SQLite3::Database.new("db/tasks.db")
DB.results_as_hash = true

require_relative "models/task"

# p Task.all

task = Task.find(1)
# task = Task.new(title: "LEO", description: "CRABY")
# task.save
# p task
# p Task.all
task.title = "Live code"
task.save
p task
p Task.all
