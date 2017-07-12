# coding: utf-8
=begin

正規表現オブジェクトの生成
1. //でくくる ex) re1 = /Ruby/
2. Regexp.new() ex) re2 = Regexp.new("Ruby")
3. %r を使う ex) re3 = %r(/Ruby/) ★正規表現に/を含んだ文字列を指定したい場合便利
正規表現のマッチング
正規表現 =~ 文字列
マッチングした場合はマッチングした文字が何文字目かを、
マッチングしない場合はnilを返す。
ex)
1. /Ruby/ =~ "aaRuby" #=> 2
2. /Ruby/ =~ "Java" #=> nil
正規表現のパターン
^ 行頭
$ 行末
[] または ex) /[AB]/ AまたはB
[^] 〜以外　ex) /[^AB]/ A,B以外
. 任意の1文字
\s 空白文字
\d 0-9までの数字
\w 英数字
\A 文字列の先頭
\z 文字列の末尾
\メタ文字　メタ文字自体（エスケープ）　ex/^ABC/ =~ "^ABC"
* 0回以上の繰り返し (のうち最長)
+ 1回以上の繰り返し (のうち最長)
*? 0回以上の繰り返しのうち最短
+? 1回以上の繰り返しのうち最短
? 0または1回の繰り返し
{n} n回の繰り返し
{n,m} n-m回の繰り返し
| どれかに当てはまる ex) /^(ABC|DEF)$/ =~ "DEF"

=end

class String
  def count_word
    ary = self.split(/\s+/)   #上記の解説を読め, \sは、空白文字, +はi回以上の繰り返し
    return ary.size
  end
end

str = "Just Another Ruby Newbie"
puts str.count_word
