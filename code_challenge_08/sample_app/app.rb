require 'sinatra'
require 'data_mapper' # metagem, requires common plugins too.

# need install dm-sqlite-adapter
DataMapper.setup(:default, "sqlite3://#{settings.root}/dictionary.sqlite3")


# You don't have to define the instance variables, DataMapper does that.
class Entry
  include DataMapper::Resource
  property :id, Serial
  property :word, String
  property :definition, Text
  property :created_at, DateTime

end

# Perform basic sanity checks and initialize all relationships
# Call this when you've defined all your models
DataMapper.finalize

# automatically create the post table
Entry.auto_upgrade!

# Makes it easy for visitors to learn where things are on your site
get '/' do
  redirect 'entries'
end

# Create a new dictionary entry. Note how easy it is given the 
# choice of variable names in the form.
post '/entries' do
  e = Entry.new(params[:entry])
  e.word.capitalize! # DataMapper gives us accessor methods automatically
  e.save             # It also gives us methods for database access
  redirect 'entries'
end

get '/entries' do
  # get the latest 20 entries
  # The parameters sent to the "all" method are similar to SQL 
  # These particular ones say, "return 20 by descending order of ID"
  @entries = Entry.all(:order => [ :id.desc ], :limit => 20)
  erb :entries
end

__END__
@@entries
<!DOCTYPE HTML>
<html>
  <head> 
    <title>Dictionary</title>
  </head>
  <body>
    <h1>Dictionary</h1>
    <dl>
      <% @entries.each do |e| %>
        <dt><%= e.word %></dt>
        <dd><%= e.definition %></dd>    
      <% end %>
    </dl>
    <h1>Add a word to the dictionary</h1>

    <!-- NOTICE the naming convention in the form -->
    <form method="post" action="/entries">
      <input type="text" name="entry[word]" value="word"> <br />
      <textarea rows="4" cols="50" name="entry[definition]" value="definition">definition</textarea>
      <input type="submit" value="Add a word">
    </form>
  </body>
</html>