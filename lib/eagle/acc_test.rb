# coding: utf-8
class AccTest
  def pub
    puts "pub is public method."
  end

  public :pub #pubメソッドをpublicに設定(指定しなくても良い)

  def priv
    puts "priv is private method."
  end

  private :priv #privメソッドをprivateに設定
end

acc = AccTest.new
acc.pub
acc.priv

=begin
<複数の同じメソッドを制限する場合>

  class AccTest
    public    #これから先は、publicになる
    def pub
      puts "pub is public method."
    end

    private    #これから先は、privateになる
    def priv
      puts "priv is private method."
    end
  end
acc = AccTest.new
acc.pub
acc.priv

=end
