from selenium import webdriver
import chromedriver_autoinstaller
import time

url = 'https://ukgate.its.uni-kassel.de/'

with open("path") as myfile:
    path = myfile.read()
    
def auto_login(ukuser, passcode):
    driver = webdriver.Chrome(path)
    driver.get(url)
    driver.find_element_by_name("username").send_keys(ukuser)
    driver.find_element_by_name("password").send_keys(passcode)
    driver.find_element_by_name("Submit").click()
    driver.close
    driver.quit()
    pass
    
def auto_logout():
    driver = webdriver.Chrome(path)
    driver.get(url+'logout.html')
    driver.find_element_by_name("Logout").click()
    driver.close
    driver.quit()
    pass

def main():
    with open("credentials.txt") as myfile:
        credntials = myfile.read().splitlines()
        username = credntials[0]
        passcode = credntials[1]
        delay =    credntials[2]
        
        
    
    try:
        auto_logout()
    except:
        pass

    try:
        auto_login(ukuser=username, passcode=passcode)
    except:
        pass
    
    
if __name__ == "__main__":
    #while(1):
    main()
    #time.sleep(int(delay)*60)