#C'est dans ce ficher qu'on va metre la fonction d'auto_comment

import time, random
from connectFB import connexion

connexion = connexion()
def auto_comment ( driver, nb_comment , user_links) :

    connexion(driver)

    driver.get(user_links)
    test = driver.find_element_by_xpath("//article[1]//a[@class='nowrap']").click()

    for (i = 0 , i < nb_comment , i++) :
        text = random.randint(0,50)
        driver.find_element_by_name ("comment_text").send_keys(text)
        driver.find_element_by_xpath ('//input[@value="Commenter"]').click()
        time.sleep(0.5)
        