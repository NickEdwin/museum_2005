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

  def patrons_by_exhibit_interest
    list = Hash.new

    key = exhibits

      value = ## all patron objets who have
              ## exhibit as interest
              patrons
              
    require'pry';binding.pry

            {gems_and_minerals = [1] ,
             dead_sea_scrolls = [1,2,3],
             imax = []}
  end
end
