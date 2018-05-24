require 'pry'

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

# def say_hello(name)
#   "Hi #{name}!"
# end
 
# puts "Enter your name:"
# users_name = gets.chomp
 
# puts say_hello(users_name)

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  request = gets.chomp
  if songs.include?(request)
    #find right song with name
    puts "Playing #{request}"
  elsif request.to_i <= songs.size && request.to_i> 0
    #binding.pry
    #return song with index
    puts "Playing #{songs[request.to_i-1]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  loop do
    puts "Please enter a command:"
    user_command = gets.chomp
    break if user_command == "exit"
    case user_command
      when "help"
        help
      when "play"
        play(songs)
      when "list"
        list(songs)
      when "help"
        help
      else
        #puts "Invalid command"
    end
  end
  exit_jukebox
end

