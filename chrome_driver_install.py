import chromedriver_autoinstaller
path = chromedriver_autoinstaller.install('.\\chromedriver.exe')
with open("path", 'w') as myfile:
    myfile.write(path)
    
    
with open("credentials.txt") as myfile:
    credntials = myfile.read().splitlines()
    username = credntials[0]
    passcode = credntials[1]
    delay =    credntials[2]


with open('uk_autologin_1.xml', 'r', encoding='UTF-16') as file :
  filedata = file.read()

# Replace the target string
filedata = filedata.replace('PT5M', 'PT'+delay+'M')

# Write the file out again
with open('uk_autologin.xml', 'w', encoding='UTF-16') as file:
  file.write(filedata)
