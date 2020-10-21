################################################################
#Author:    Zeyad Azima                                        #
#Github:    https://github.com/Zeyad-Azima                     #
#Facebook:  https://www.facebook.com/elkingzeyad.azeem         #
#Version:   0.1                                                #
# There is more updates soon..                                 #
################################################################
#
require 'net/http'
require 'time'
class Domain

  def checker(list)
    puts ""
    puts "[+] Start live domain check on #{list}"
    puts ""
    sleep(3)
    File.readlines(list).each do |host|
      uri = URI('http://'+host.chomp+'/')
      res = Net::HTTP.get_response(uri)
      if res.code==200 || 303 || 302 || 301 || 404 || 403 || 402
        puts "[#{res.code}]=> http://#{host.chomp}"

      end
    rescue SocketError, Errno::ENETUNREACH, Errno::ETIMEDOUT
    end

  end
end
