# coding: utf-8
array = ["a", "1", nil]
array.each do |item|
  case item
  when String
    puts "item is String"
  when Numeric
    puts "item is Numeric"
  else
    puts "item is something"
  end
end

#----------(if文)------------
=begin
array.each do |item|
  if String === item
    puts "item is String"
  elsif Numeric === item
    puts "item is Numeric"
  else
    puts "item is something"
  end
end
=end


