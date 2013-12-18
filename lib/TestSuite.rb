class TestSuite
  @units = nil
  @classes = nil
  @lines = nil
  
  def initialize
    @units = Array.new
    @classes = Array.new
  end
  
  def read(filename)
    file = File.open(filename, "r")
    @lines = file.read.lines
    @lines.each {|line|
      splitLine = line.split(':')
      @classes.push(splitLine[0].strip)
      @units.push(splitLine[1].strip)
    }
    @classes.uniq!
    @units.uniq!
    file.close
  end
  
  def units
    @units
  end
  
  def classes
    @classes
  end
  
  def lines
    @lines
  end
  
end