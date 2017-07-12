tags = ["A","IMG","PRE","MJK"]
tags.each do |tagname|
  case tagname
  when "P", "A", "I", "B", "BLOCKQUOTE"
    puts "#{tagname} has child"

  when "IMG", "BR","PRE"
    puts "#{tagname} has no child"
  else
    puts "#{tagname} can not be used"
  end
end
