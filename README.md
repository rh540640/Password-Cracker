# Password-Cracker
Takes a password hash as input and attempts to crack the hash using a dictionary attack.

To use the script, save it to a file (e.g. passwordcracker.sh) and make it executable using chmod +x passwordcracker.sh. Then, run the script with the password hash as an argument, like so:
./passwordcracker.sh 5f4dcc3b5aa765d61d8327deb882cf99
This will attempt to crack the MD5 hash 5f4dcc3b5aa765d61d8327deb882cf99 using words from a dictionary file named dictionary.txt. If the password is found in the dictionary, it will be displayed. Otherwise, the script will indicate that the password was not found. Note that the dictionary file should contain one word per line.
