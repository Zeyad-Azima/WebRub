################################################################
#Author:    Zeyad Azima                                        #
#Github:    https://github.com/Zeyad-Azima                     #
#Facebook:  https://www.facebook.com/elkingzeyad.azeem         #
#Version:   0.3                                                #
# There is more updates soon..                                 #
################################################################
#
require 'time'
require 'resolv'
class Domain

  def ips(list)
    puts ""
    puts "[+] Start Resolving IPS on #{list}"
    puts ""
    sleep(3)
    File.readlines(list).each do |ips|
      result=Resolv.getnames("#{ips}")
      puts "[#{ips}}=> #{result}"

    rescue Resolv::ResolvError
    end
  end
end
