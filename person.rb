class Person
  attr_accessor :name, :age, :siblings

  # Possible attributes
  # name [String]
  # age [Integer]
  # siblings [Array<String>]
  def initialize(attrs = {})
    @name = attrs['name']
    @age = attrs['age']
    @siblings = attrs['siblings']
  end

  def scottish?
    name.start_with? 'Mc'
  end
end
