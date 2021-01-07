# Macos-AT-DNS-Blocker

**A script for blocking Ads,Tracker etc. by adding them to hosts file on MacOS**

## FAQ

	Q: Does it delete my own dns records in the /etc/hosts file?
	A: No, it only deletes the duplicates (sort command). 

## Sources

[https://winhelp2002.mvps.org/hosts.txt](https://winhelp2002.mvps.org/hosts.txt)

[https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts](https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts)

[http://hostsfile.org/Downloads/hosts.txt](http://hostsfile.org/Downloads/hosts.txt)

[http://hostsfile.mine.nu/Hosts.txt](http://hostsfile.mine.nu/Hosts.txt)

[https://adaway.org/hosts.txt](https://adaway.org/hosts.txt)

## Installation

1. Open the Terminal
![https://teodorcucu.net/assets/img/macos-dns-blocker/B5.png](https://teodorcucu.net/assets/img/macos-dns-blocker/B5.png)
![https://teodorcucu.net/assets/img/macos-dns-blocker/B5.png](https://teodorcucu.net/assets/img/macos-dns-blocker/B1.png)
2.Download the Script from GitHub 

```wget https://raw.githubusercontent.com/teodorcucu/Macos-AT-DNS-Blocker/main/host-addblocker.sh```
![https://teodorcucu.net/assets/img/macos-dns-blocker/B5.png](https://teodorcucu.net/assets/img/macos-dns-blocker/B2.png)
3.Make the script executable

```sudo chmod +x host-addblocker.sh```

![https://teodorcucu.net/assets/img/macos-dns-blocker/B5.png](https://teodorcucu.net/assets/img/macos-dns-blocker/B3.png)
4. Run it as sudo

```sudo bash host-addblocker.sh```
![https://teodorcucu.net/assets/img/macos-dns-blocker/B4.png](https://teodorcucu.net/assets/img/macos-dns-blocker/B5.png)


That's it.
