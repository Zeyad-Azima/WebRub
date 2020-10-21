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

class Direr

  def attack(host,protocol,file)
    puts ""
    puts "[+] Using #{file} as a wordlist on #{host} used protocol is #{protocol}"
    puts "[+] Starting Attack...."
    puts ""
    sleep(5)
    File.readlines(file).each do |line|
      uri = URI(protocol+'://'+host+'/'+line.chomp)
      res = Net::HTTP.get_response(uri)
      puts "[#{res.code}]=> #{line}"
    end
  end
end
