class AncientMythologies::CLI
  
  def call
    AncientMythologies::Scraper.scrape_mythologies
    welcome
    display_mythologies
    menu
    goodbye
  end
  
  def welcome
		puts ""
		puts "----------------------------------------"
		puts "            ANCIENT MYTHOLOGIES               "
		puts "----------------------------------------"
  end
  
 def display_mythologies
    Mythology.all.each.with_index(1) do |mythology, i|
      puts "#{i}.   #{mythology.name}"
    end
  end
  
  def display_info
    Mythology.all.each.with_index(1) do |mythology, i|
    end
  end
  
  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the mythologies you want more information on, type list to see list, or exit:"
      input = gets.strip.downcase
      
     if input.to_i > 0 && input.to_i <8
        the_mythology = display_info[input.to_i-1]
        puts "#{the_mythology.name} - #{the_mythology.info}"
      elsif input == "list"
        display_mythologies
      elsif input != "exit"
        puts "Invalid response."
      end
    end
  end

  def goodbye
puts "See you next time"
  end
end