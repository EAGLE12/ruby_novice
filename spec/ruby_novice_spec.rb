require 'spec_helper'

RSpec.describe 'ruby_novie command', type: :aruba do
  context 'version option', type: :version do
    before(:each) { run('ruby_novice v') }
    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output("0.1.0") }
  end

  context 'help option', type: :help do
    expected = `bundle exec exe/ruby_novice help`
    before(:each) { run('ruby_novice help') }
    it { expect(last_command_started).to be_successfully_executed }
#    it { expect(last_command_started).to have_output(expected) }
  end

=begin
  context 'print hello', type: :hello do
    before(:each) { run('ruby_novice hello') }
    expected = "Hello."
    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end
=end  

  context 'helloruby', type: :helloruby do
    before(:each) { run('ruby_novice helloruby') }
    expected = "Hello, Ruby."
    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'puts_and_p', type: :puts_and_p do
    before(:each) { run('ruby_novice puts_and_p') }
    expected = "Hello,\n\tRuby.\n\"Hello,\n\tRuby.\""

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'kiritsubo', type: :kiritsubo do
    before(:each) { run('ruby_novice kiritsubo') }
    expected = "いづれの御時にか女御更衣あまたさぶらいたまいけるなかに\nいとやむごとなき際にはあらぬがすぐれて時めきたまふありけり"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'area_volume', type: :area_volume do
    before(:each) { run('ruby_novice area_volume') }
    expected = "表面積=2200\n体積=6000"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'comment_sample', type: :comment_sample do
    before(:each) { run('ruby_novice comment_sample') }
    expected = "表面積=2200\n体積=6000"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'greater_smaller', type: :greater_smaller do
    before(:each) { run('ruby_novice greater_smaller') }
    expected = "greater"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'greater_smaller_else', type: :greater_smaller_else do
    before(:each) { run('ruby_novice greater_smaller_else') }
    expected = "greater"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'print_argv', type: :print_argv do
    before(:each) { run('ruby_novice print_argv 1st 2nd 3rd 4th 5th') }
    expected = "最初の引数: 1st\n２番目の引数: 2nd\n３番目の引数: 3rd\n４番目の引数: 4th\n５番目の引数: 5th"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'happy_birth', type: :happy_birth do
    before(:each) { run('ruby_novice happy_birth Ruby') }
    expected = "Happy Birthday, Ruby!"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'arg_arith', type: :arg_arith do
    before(:each) { run('ruby_novice arg_arith 5 3') }
    expected = "5 + 3 = 8\n5 - 3 = 2\n5 * 3 = 15\n5 / 3 = 1"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'read_text', type: :read_text do
    before(:each) { run('ruby_novice read_text helloruby2.rb') }
    expected = "Hello, Ruby.\nHELLO, RUBY."

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'read_text_simple', type: :read_text_simple do
    before(:each) { run('ruby_novice read_text_simple helloruby2.rb') }
    expected = "Hello, Ruby.\nHELLO, RUBY."

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'read_text_oneline', type: :read_text_oneline do
    before(:each) { run('ruby_novice read_text_oneline helloruby2.rb') }
    expected = "Hello, Ruby.\nHELLO, RUBY."

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'read_line', type: :read_line do
    before(:each) { run('ruby_novice read_line helloruby2.rb') }
    expected = "Hello, Ruby.\nHELLO, RUBY."

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'simple_grep', type: :simple_grep do
    before(:each) { run('ruby_novice simple_grep H helloruby2.rb') }
    expected = "Hello, Ruby.\nHELLO, RUBY."

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'hello_ruby2', type: :hello_ruby2 do
    before(:each) { run('ruby_novice hello_ruby2')}
    expected = "Hello, Ruby."

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'use_grep', type: :use_grep do
    before(:each) { run('ruby_novice use_grep H helloruby2.rb') }
    expected = "Hello, Ruby.\nHELLO, RUBY."

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

end
