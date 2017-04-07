require 'optparse'
require_relative 'env.rb'




class DatabaseLoader

  def initialize
    parser
    go_forest_go
  end


def parser 

parser = OptionParser.new do|opts|
  opts.banner = "Usage: years.rb [options]"
  
  opts.on('-u', '--user user', 'User') do |user|
    @user = user;
  end

  opts.on('-t', '--topic topic', 'Topic') do |topic|
    @topic= topic;
  end

  opts.on('-s', '--send send', 'Send message') do |send_m|
    @send_m= send_m;
  end

  opts.on('-l', '--list', 'List of topics') do |list|
    if list == true
    puts Topic.all
    else
    puts "po -l nie powinoo być żadnej wartości" 
    end
  end
end
parser.parse!

def go_forest_go
  Message.create(author: @user, content: @send_m)
  Topic.create(title: @topic)

end
puts @options
end
end

