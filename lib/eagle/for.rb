# coding: utf-8
sum = 0
for i in 1..5
  sum += i
end
puts sum

=begin
sum = 0                  -----------------------------
for i in 1...5   <------ | "..."の個数で範囲が変わる |
  sum += i               | "..."の場合1+2+3+4まで    |
end                      | ".."の場合1+2+3+4+5まで   |
puts sum                 -----------------------------
=end
