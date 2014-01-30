require 'pry'

class UI # was Madlibs -- bad choice of name

  def prompt

    # this hash is returned with parts of speech
    # gathered from the user
    responses = {
      noun: 'noun',
      verb: 'verb',
      adjective: 'adjective',
      adverb: 'adverb',
      object: 'object',
      mode: 'mode'
    }

    # strings used for prompting user
    prompts = {
      noun: 'Tell me a noun:',
      verb: 'Tell me a verb:',
      adjective: 'Tell me an adjective:',
      adverb: 'Tell me an adverb',
      object: 'Tell me an object:'
    }

    # get parts of speech
    prompts.each do |part_of_speech, prompt_text|
      puts prompt_text
      responses[part_of_speech] = gets.strip
    end

    # prompting for mode is based on an array of choices
    modes_of_transportation = [
      'in a boat',
      'on a bus',
      'inside a whale',
      'clinging under a speeding truck'
    ]

    puts 'Choose one of the following:'
    modes_of_transportation.each_index do |i|
      puts "#{(i + 1).to_s}. #{modes_of_transportation[i]}"
    end
    puts 'by typing the number of your choice: '

    choice = gets.chomp.to_i - 1

    # make sure choice is legal
    choice = 0 unless choice < modes_of_transportation.length
    responses[:mode] = modes_of_transportation[choice]

    responses
  end
end

class SentenceTemplate

  def initialize(a_string)
    @template = a_string
  end

  def insert(parts_of_speech)
    sentence = @template
    parts_of_speech.each do |part, phrase|
      regular_expression = "\(#{part.to_s}\)"
      sentence.sub!(regular_expression, phrase)
    end
     sentence
  end
end

# Script execution starts here
ui = UI.new
parts_of_speech = ui.prompt

sentence_templates =  [
  SentenceTemplate.new('The (adjective) (noun) suddenly and (adverb) had to (verb) the (object).'),
  SentenceTemplate.new('The (adjective) (noun) suddenly and (adverb) had to (verb) the (object) (mode).'),
  SentenceTemplate.new('The (adjective) (noun) suddenly had to (verb) the (object).')
]

sentence_templates.each do |sentence|
  puts sentence.insert parts_of_speech
end
