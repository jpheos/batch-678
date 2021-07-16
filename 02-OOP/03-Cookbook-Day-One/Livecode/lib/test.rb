require 'awesome_print'

require_relative 'recipe'
require_relative 'controller'
require_relative 'cookbook'    # You need to create this file!

csv_file   = File.join(__dir__, 'recipes.csv')
cookbook   = Cookbook.new(csv_file)

controller = Controller.new(cookbook)

controller.destroy
