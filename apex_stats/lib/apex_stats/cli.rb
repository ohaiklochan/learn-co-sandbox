class ApexStats::CLI
  
  def call
    welcome
    display_stats_list
    ApexStats::Legends.get_data
    menu
  end
  
  def welcome
    puts ""
    puts "Welcome to Apex Stats!"
  end
  
  def display_stats_list
    ApexStats::Legends.all.each_with_index do |legends, index|
      puts "#{index +1}. #{legend.name}"
    end
    puts ""
    puts ""
    puts "Which legend would you like more info about?"
    input = gets.strip.downcase

    legend_selection(legend)
  end

  
  def menu
    puts "Type the name of one of the legends to see more about that legend."
    puts "Type 'list' to list out all legends."
    puts "Type 'exit' to exit."

    input = gets.strip.downcase
      if input == "list"
        display_stats_list
        menu
      elsif input == "wraith"
        display_wraith
        menu
      elsif input == "pathfinder"
        display_pathfinder
        menu
      elsif input == "lifeline"
        display_lifeline
        menu
      elsif input == "octane"
        display_octane
        menu
      elsif input == "bangalore"
        display_bangalore
        menu
      elsif input == "bloodhound"
        display_bloodhound
        menu
      elsif input == "mirage"
        display_mirage
        menu
      elsif input == "caustic"
        display_caustic
        menu
      elsif input == "gibraltar"
        display_gibraltar
        menu
      elsif input == "exit"
        goodbye
      else
        puts "What? Type in something that makes sense to me."
        menu
      end
    end
  end

  def legend_selection(legend)
    legend = ApexStats::Legends.find_by_name(legend)
    legend.each do |l|
      puts "Name: #{l.name}"
      puts "Backstory: #{l.backstory}"
      puts "Abilities: #{l.abilities}"
    end
  end
  
  def display_wraith
    legend = ApexStats::Legends.wraith
    show_stats(legend)
  end
  
  def display_pathfinder
    legend = ApexStats::Legends.pathfinder
    show_stats(legend)
  end
  
  def display_lifeline
    legend = ApexStats::Legends.lifeline
    show_stats(legend)
  end
  
  def display_octane
    legend = ApexStats::Legends.octane
    show_stats(legend)
  end
  
  def display_bangalore
    legend = ApexStats::Legends.bangalore
    show_stats(legend)
  end
  
  def display_bloodhound
    legend = ApexStats::Legends.bloodhound
    show_stats(legend)
  end
  
  def display_mirage
    legend = ApexStats::Legends.mirage
    show_stats(legend)
  end
  
  def display_caustic
    legend = ApexStats::Legends.caustic
    show_stats(legend)
  end
  
  def display_gibraltar
    legend = ApexStats::Legends.gibraltar
    show_stats(legend)
  end
  
  def goodbye
    puts "See ya later!"
  end
  
  def show_stats(legend)
    puts ""
    puts ""
    puts "Name: #{legend.name}"
    puts ""
    puts ""
    puts "Backstory: #{legend.backstory}"
    puts ""
    puts ""
  #   puts "**Abilities**"
  #   puts "------------------------"
  #   #legend.abilities.each do |ability|
  #   puts ""
  #   puts "Passive Ability: #{legend.passive_ability_name}"
    
  # #  puts "Passive Description: " + "#{legend.passive_ability_description}"
  
  #   puts ""
  #   puts "Tactical Ability: #{legend.tactical_ability_name}"
    
  # #  puts "Tactical Description: " + "#{tactical_ability_description}"
  
  #   puts ""
  #   puts "Ultimate Ability: #{legend.ultimate_ability_name}"
    
  # #   puts "Ultimate Description: " + "#{ultimate_ability_description}"
    puts ""
  end
   