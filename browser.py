from selenium import webdriver
from selenium.webdriver.chrome.options import Options


class navigateur (self) :
    def __init__(sellf) :
        self.navigateur_options = options()

        #pour que le navigateur fonctionnne en arrière plan
        self.navigateur_options.add_argument('--headless')
           
        #le chemin vers notre chromedriver.exe, vérifier bien que ce driver support la version de votre google chrome
        self.browser = webdriver.chrome("C:/Users/USER/Downloads/chromedriver_win32/chromedriver.exe" , options = self.navigateur_options )
