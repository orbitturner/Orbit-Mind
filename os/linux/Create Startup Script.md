# How to Run a Command on Startup in Linux

One of Linux's strengths as an operating system is its ability to be configured and tweaked to suit your tastes. Using the command line allows you to issue powerful commands that are unavailable to other OS users, and use of the command line is almost a necessity to get the most out of your Linux distribution. For example, sometimes you may want to run a script or a command whenever you start your Linux machine. There is more than one way to do this.

1.  **Option 1**.
    
    Put the command in your crontab file. The crontab file in Linux is a daemon that performs user-edited tasks at specific times and events. To edit the file, open a terminal and type "sudo crontab -e" to open your crontab file in the default text editor. At the first available line, type "@reboot xxxx", where "xxxx" is the command you wish to run. Save the file and exit.
    
2.  **Option 2**.
    
    Put a script containing the command in your /etc directory. Create a script such as "startup.sh" using your favorite text editor. Save the file in your /etc/init.d/ directory. Change the permissions of the script (to make it executable) by typing "chmod +x /etc/init.d/mystartup.sh".
    
3.  **Option 3**.
    
    Edit the /rc.local script using your text editor. On Fedora systems, this script is located in /etc/rc.d/rc.local, and in Ubuntu, it is located in /etc/rc.local. Once you add the commands you wish to run -- making sure you do so as root -- save the file and exit. The commands will run after the next startup.