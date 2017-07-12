# coding: utf-8

#ライブラリーを読み込む時に"require"メソッドを使う
require_relative "grep"     #grep.rbの読み込み(「.rb」は不要)

pattern = Regexp.new(ARGV[0])
filename = ARGV[1]
simple_grep(pattern, filename)   #simple_grep　メソッドの起動
