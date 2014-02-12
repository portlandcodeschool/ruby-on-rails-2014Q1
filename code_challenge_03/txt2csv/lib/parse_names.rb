
class Parse

  def self.parse_names (prefixes, suffixes, name_string)

    parsed_name = {pre:"", first:"", middle:"", last:"", suffix:""}

    # get the last word and see if it's a suffix
    # if so, save as suffix and store the next to last word as last_name
    # otherwise store last word as last name

    word = name_string.split
    if suffixes.include? word.last
      parsed_name[:suffix] = word.pop
    end
    parsed_name[:last] = word.last
    parsed_name.values
  end

end