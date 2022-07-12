FILE_NAME = "romeo-juliet.txt"

# Load the words from a file
def words_from_file(text_file)
    File.read(text_file).downcase.gsub(/[^a-z]/, " ").split
rescue
    puts "Give me #{text_file} and let's the party started!"
    exit
end

# Load lists of words in the text
words = words_from_file(FILE_NAME)

# Create a dictionary of words count
WORD_COUNT = {}
words.each do |word|
    WORD_COUNT[word] = 0 unless WORD_COUNT[word] # If this word is new, add it to word count...
    WORD_COUNT[word] += 1                        # ... else increment its count
end

# Show the most frequent words and their counts
WORD_COUNT.sort_by {|word, count| count}
    .reverse[0..10]
    .each {|word, count| puts "#{word}: #{count}"}