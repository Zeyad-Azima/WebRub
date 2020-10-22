################################################################
#By:        Zeyad-Azima & mhzcyber                             #
#Github:    https://github.com/Zeyad-Azima                     #
#Facebook:  https://www.facebook.com/elkingzeyad.azeem         #
#Version:   0.2                                                #
# There is more updates soon..                                 #
################################################################
#
import shodan, requests, json, threading, sys

API_KEY = "O5OelZdRUzWPUebMCkZfskqkRmwcQHML"

api = shodan.Shodan(API_KEY)
def shoder(target):
    try:
            results = api.search(target)
            print('Results found: {}'.format(results['total']))
            print('')
            for result in results['matches']:

                r = requests.get('https://api.shodan.io/shodan/host/{0}?key={1}'.format(result['ip_str'],API_KEY))
                print('IP: {0}\nPort: {1}'.format(result['ip_str'],result['port']))
                ips = result['ip_str']
                print(result['data'])
                d = json.loads(r.text)
                try:
                    print('Hostname: {0}'.format(d['hostnames']))
                    print('Open Ports: {0}'.format(d['ports']))
                    print('Vulnerabilities:\n{0}'.format(d['vulns']))
                except Exception as e:
                    pass
                print('')
                print('------------------------------------------------------------------------------------------------------------')
    except shodan.APIError as e:
            print('Error: {}'.format(e))

try:
    thread = threading.Thread(target=shoder(sys.argv[1]))
    thread.start()
    thread.join()
except IndexError:
    print('Please Set a Target ;( \nex: python3 Shodan.py google.com')