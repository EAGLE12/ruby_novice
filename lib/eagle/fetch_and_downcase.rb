# coding: utf-8
def fetch_and_downcase(ary, index)
  if str = ary[index]
    return str.downcase   #downcaseは大文字を小文字に変換する
  end
end

ary = ["Bob","Foo","Woo"]
p fetch_and_downcase(ary, 0)
p fetch_and_downcase(ary, 1)
p fetch_and_downcase(ary, 2)
p fetch_and_downcase(ary, 3)    #nil　配列が2までだから

