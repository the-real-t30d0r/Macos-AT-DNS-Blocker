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

2.Download the Script from GitHub 

```wget https://raw.githubusercontent.com/teodorcucu/Macos-AT-DNS-Blocker/main/host-addblocker.sh```

3.Make the script executable
```sudo chmod +x host-addblocker.sh```

4. Run it as sudo

```sudo bash host-addblocker.sh```


That's it.
