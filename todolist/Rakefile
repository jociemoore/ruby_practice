require "rake/testtask"
require "bundler/gem_tasks"
require 'find'

desc 'Say hello'
task :hello do
  puts "Hello there. This is the 'hello' task."
end

desc 'Run tests'
task :default => :test

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList['test/**/*_test.rb']
end

desc 'List all non-hidden files'
task :list do
  directory = '/Users/jocie/launch_school/course_130/lesson_3/todolist_project/'
  files = []
  Find.find(directory) do |path|
    if File.basename(path)[0] == '.'
      Find.prune
    elsif File.file?(path)
      files << File.basename(path)
    end
  end
  puts files.join("\n")
end
