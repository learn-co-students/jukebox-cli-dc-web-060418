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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list (song_array)
  song_array.each_with_index do |e, i|
    puts "#{i+1}. #{e}"
  end
end

def play (song_array)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  response = "Invalid input, please try again"
  song_array.each_with_index do |e, i|
    if user_input == (i+1).to_s || user_input == e
      response = "Playing #{e}"
    end
  end
  puts response
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  user_input = ""
  while(user_input != "exit")
    puts "Please enter a command:"
    user_input = gets.chomp
    case user_input
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
    when "help"
      help
    end
  end
  
end
