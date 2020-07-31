# require modules here
require 'yaml'
require 'pry'

def load_library(locat)
  emoticons = YAML.load_file(locat)
  emoticon_hash = {}

#method to organize the hash
    emoticons.each do |meaning, emoticon_set|
        english_emote = emoticon_set[0]
        japanese_emote = emoticon_set[1]
        emoticon_hash[meaning] = {
          english: {},
          japanese: {}
        }
        emoticon_hash[meaning][:english] = english_emote
        emoticon_hash[meaning][:japanese] = japanese_emote
      end
    emoticon_hash
end

def get_japanese_emoticon(locat, emoticon)
  # code goes here

end

def get_english_meaning(locat, emoticon)
  # code goes here
  emoticons = YAML.load_file(locat)
  emoticon_hash = load_library(locat)
  response = nil
  emoticon_hash.each do |meaning, emoticon_set|
    if emoticon == emoticon_set
      then response = meaning
    else return "Try again"
    end
  end
end
