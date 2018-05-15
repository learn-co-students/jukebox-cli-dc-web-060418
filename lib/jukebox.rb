songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def play(my_songs)
  puts "Please enter a song name or number:"
  
  user_response = gets.chomp
  
  if my_songs.include?(user_response)
    puts "Playing #{user_response}"
    
  elsif user_response.to_i > 0 && user_response.to_i <= my_songs.length
    puts "Playing #{my_songs[user_response.to_i - 1]}"
    
  else
    puts "Invalid input, please try again"
  end
end

def list(my_songs)
  my_songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  command = ""
  
  while command != "exit"
    puts "Please enter a command:"
    command = gets.chomp
    
    case command
    when "play"
      play(my_songs)
    when "list"
      list(my_songs)
    when "help"
      help
    when "exit"
      exit_jukebox
    end
  end
end