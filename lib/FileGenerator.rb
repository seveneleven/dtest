class FileGenerator
  attr_accessor :templateFilename 
  @templateFilename = ""
  @wildcards = nil
  
  def initialize
    @wildcards = Hash.new(0)
  end
  
  def addValue(key, value)
    @wildcards[key] = value
  end
  
  def reset
    @wildcards.clear
  end
  
  def generate(filename)
    templateFile = File.open(@templateFilename, "r")
    content = templateFile.read
    templateFile.close
    
    @wildcards.each { |key, value|
      content.gsub!("{#{key}}", value)      
    }
    
    fileToGenerate = File.open(filename, "w")
    fileToGenerate.write(content)
    fileToGenerate.close
  end
end