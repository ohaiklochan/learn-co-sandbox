class ApexStats::CLI
  
  
  def call
    puts "Hello and Welcome to ApexStats!"
    list_legends
  end
  
  def list_legends
    puts <<-DOC
      1. Wraith
      2. Pathfinder
    DOC
  end

  
end