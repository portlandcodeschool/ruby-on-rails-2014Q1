require "spec_helper"

require "parse_names.rb"

# The format of the names looks to be something like:

#     [prefix] [first_name] [middle_name | middle_initial] last_name [suffix]

# where: 

# * Everything in [square brackets] is optional. 
# * There may be a middle name or a middle initial, but not both. 
# * If there is a middle name or a last name, there will be a first name. (For "M. Jackson", "M." is the first name.)
# * There is always a last name (For "Miss Jane," "Jane" is a last name)
# * Sometimes the last name is hyphenated (as in "Dr. Huntington-Smythe"). Do not split hyphenated last names.

prefixes = ['M.', 'Mrs.', 'Mr.', 'Dr.', 'Ms.', 'Sister', "Lady"]
suffixes = %w(Jr. Sr. II III IV PhD.)


describe Parse do

  it "should parse last names" do   
    return_array = Parse.parse_names(prefixes, suffixes, "Madona")
    expect(return_array).to eq(["","","","Madona",""])
  end

  it "should parse suffixes" do
    return_array = Parse.parse_names(prefixes, suffixes, "Madona Jr.")
    expect(return_array).to eq(["","","","Madona","Jr."])
  end

  it "should parse first names" do
    pending
    return_array = Parse.parse_names(prefixes, suffixes, "Mary Madona")
    expect(return_array).to eq(["","Mary","","Madona",""])
  end

  it "should parse first names with suffixes " do
    pending
    return_array = Parse.parse_names(prefixes, suffixes, "Mary Madona Jr.")
    expect(return_array).to eq(["","Mary","","Madona","Jr."])
  end

  it "should parse middle names" do
    pending
    return_array = Parse.parse_names(prefixes, suffixes, "Mary Samuel Madona")
    expect(return_array).to eq(["","Mary","Samuel","Madona",""])
  end

  it "should parse middle initials" do
    pending   
    return_array = Parse.parse_names(prefixes, suffixes, "Mary S. Madona")
    expect(return_array).to eq(["","Mary","S.","Madona",""])
  end

  it "should parse middle names & suffixes" do
    pending
    return_array = Parse.parse_names(prefixes, suffixes, "Mary Samuel Madona III")
    expect(return_array).to eq(["","Mary","Samuel","Madona","III"])
  end

  it "should parse prefixes and last names" do
    pending
    return_array = Parse.parse_names(prefixes, suffixes, "Lady Madona")
    expect(return_array).to eq(["Lady","","","Madona",""])
  end

  it "should parse prefixes and last names and suffixes" do
    pending
    return_array = Parse.parse_names(prefixes, suffixes, "Lady Madona III")
    expect(return_array).to eq(["Lady","","","Madona","III"])
  end

  it "should parse prefixes and last names and suffixes" do
    pending
    return_array = Parse.parse_names(prefixes, suffixes, "Lady Madona III")
    expect (return_array).to eq(["Lady","","","Madona","III"])
  end

  it "should parse the whole banana" do
    pending
    return_array = Parse.parse_names(prefixes, suffixes, "Lady Samuel Madona-Richey III")
    expect(return_array).to eq(["Lady","Mary","Samuel","Madona-Richey","III"])
  end

end



