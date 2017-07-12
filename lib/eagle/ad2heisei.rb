# coding: utf-8
#西暦から平静に変換する

ad = ARGV[0].to_i
puts "西暦 %d年" % [ad]
heisei = ad - 1988
print ("平成 #{heisei} 年\n")
