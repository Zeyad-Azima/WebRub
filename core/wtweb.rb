################################################################
#Author:    Zeyad Azima                                        #
#Github:    https://github.com/Zeyad-Azima                     #
#Facebook:  https://www.facebook.com/elkingzeyad.azeem         #
#Version:   0.2                                                #
# There is more updates soon..                                 #
################################################################
#
class Web
  def grab(list)
    system("sudo chmod +x core/whatweb.sh")
    system("bash core/whatweb.sh #{list}")
  end
end
