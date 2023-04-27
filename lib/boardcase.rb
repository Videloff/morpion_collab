class BoardCase

  attr_accessor :cell_name, :cell_number, :is_empty

  def initialize(cell_name)
    @cell_name = cell_name
    @cell_number = getCase()
    @is_empty = true
  end

  def getCase()
    case @cell_name
        when "a1", "A1"
          return 33
        when "a2", "A2"
          return 37
        when "a3", "A3"
          return 41

        when "b1", "B1"
          return 77
        when "b2", "B2"
          return 81
        when "b3", "B3"
          return 85

        when "c1", "C1"
          return 121
        when "c2", "C2"
          return 125
        when "c3", "C3"
          return 129
      end
  end
end