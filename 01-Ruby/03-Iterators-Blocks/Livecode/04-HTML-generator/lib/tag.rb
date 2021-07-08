def tag(tag_name, attributes = nil)
  if attributes
    attri = " #{attributes[0]}=\"#{attributes[1]}\""
  else
    attri = ""
  end
  "<#{tag_name}#{attri}>#{yield}</#{tag_name}>"
end

html1 = tag("h1") do
  "Some Title"
end

html2 = tag("a", ["src", "www.toto.com"]) do
  "Google it"
end

puts "----------------------"

puts "<h1>Some Title</h1>"
puts html1

puts "----------------------------"
#=> "<h1>Some Title</h1>"

puts '<a src="www.google.com">Google it</a>'
puts html2
