# coding: utf-8
puts "breakの例"
i = 0
["Perl", "Python", "Ruby", "Scheme"].each do |lang|
  i += 1
  if i == 3
    break
  end
  p [i, lang]
end

puts "ちなみに配列の大きさは:" "#{["Perl", "Python", "Ruby", "Scheme"].length}"

puts "nextの例"
i = 0
["Perl", "Python", "Ruby", "Scheme"].each do |lang|
  i += 1
  if i == 3
    next
  end
  p [i, lang]
end
