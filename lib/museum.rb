class Museum
  attr_reader :name,
              :exhibits,
              :patrons

  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
       exhibits.map do |exhibit|
        if patron.interests.include?(exhibit.name)
         exhibit.name
        end
    end.compact.sort
  end

  def admit(patron)
    @patrons << patron
  end 
end
