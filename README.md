# SMBBrute
Simple Password Spray Tool For SMB Shares. No False Positivies!

This is a simple few lines of code in bash that will try to find the valid username password combination from the given username & password list.

## Installation

This tool is only for Linux.

`git clone https://github.com/StillNoob/SMBBrute.git`

or you can simply copy paste the SMBBrute.sh file. 

## Usage

`./SMBBrute.sh <IP Address> <Share_Name> <User_list> <Pass_list>`

If there is any valid combination, it'll be displayed on the screen. Also, the script will create a new file named valids.txt. All valid combinations will be saved there, you can open it at any time to check if there is any found. 

## Why I made this?
So, once I was solving a machine and it allowed guest sessions, so literally if you provide any username or password, it'll be valid because guest session are allowed, but you won't be able to READ or Write the shares.

Therefore, I was so annoyed with this so what I did was:
1. Used `smbclient` to login as guest.
2. Enumerate share names.
3. Provide that share name in my little tool

So, as we are trying to login to a secured share, we don't be able to login to it with guest. That's the thing, that's the difference b/w guest session and valid user session. This is what the script looks for - but not exactly.

Ok enough, try this on your own & if you want to you can help me by modifying it for better. :)

