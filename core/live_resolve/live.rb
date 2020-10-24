################################################################
#Author:    Zeyad Azima                                        #
#Github:    https://github.com/Zeyad-Azima                     #
#Facebook:  https://www.facebook.com/elkingzeyad.azeem         #
#Version:   0.3                                                #
# There is more updates soon..                                 #
################################################################
#
#require 'net/http'
require 'socket'
require 'time'
class Domain

  def checker(list)
    puts ""
    puts "[+] Start live domain check on #{list}"
    puts ""
    sleep(3)
    File.readlines(list).each do |host|
      s=TCPSocket.new("#{host.chomp}",80)
      if s.connect_address
        puts "[+]=> http://#{host}/"
      end
    rescue SocketError, Errno::ENETUNREACH, Errno::ETIMEDOUT, Errno::ENOENT, Errno::ECONNREFUSED, Errno::ENOENT

    end
  end
end
