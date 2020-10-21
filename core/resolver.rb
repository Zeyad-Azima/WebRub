################################################################
#Author:    Zeyad Azima                                        #
#Github:    https://github.com/Zeyad-Azima                     #
#Facebook:  https://www.facebook.com/elkingzeyad.azeem         #
#Version:   0.1                                                #
# There is more updates soon..                                 #
################################################################
#
require 'time'
require 'socket'
class Resolver

  def hosts(list)
    puts ""
    puts "[+] Start Resolving subdomains on #{list}"
    puts ""
    sleep(3)
    File.readlines(list).each do |host|
      result=IPSocket.getaddress(host)

      puts "[+] #{host}=> #{result}"

      rescue SocketError
    end
  end
end

