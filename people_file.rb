require 'json'
require './person'

class PeopleFile
  attr_reader :people

  def initialize(file)
    records = JSON.parse(File.read(file))
    @people = records.map {|r| Person.new(r) }
  end

  # Array of names
  def scottish_names
    raise NotImplementedError
  end

  # Array of people with more than 1 sibling, sorted by age
  def ppl_many_siblings
    raise NotImplementedError
  end

  # Array of people with siblings in the same file
  def ppl_siblings_in_file
    raise NotImplementedError
  end
end
