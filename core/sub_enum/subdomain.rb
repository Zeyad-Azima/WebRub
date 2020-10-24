################################################################
#Author:    Zeyad Azima                                        #
#Github:    https://github.com/Zeyad-Azima                     #
#Facebook:  https://www.facebook.com/elkingzeyad.azeem         #
#Version:   0.3                                                #
# There is more updates soon..                                 #
################################################################
#
require 'net/http'
require 'time'
class Subs

  def brute(host,file='core/subs.txt')
    puts ""
    puts "[+] Start Subdomain Bruteforce on #{host}: "
    puts ""
    sleep(3)
    File.readlines(file).each do |sub|
      uri = URI('http://'+sub.chomp+'.'+host.chomp+'/')
      res = Net::HTTP.get_response(uri)
      if res.code==200 || 303 || 302 || 301 || 404 || 403 || 402
        puts "[+]=> #{sub.chomp}.#{host.chomp}"
      end
    rescue SocketError, Errno::ENETUNREACH, Errno::ETIMEDOUT

    end
  end
end