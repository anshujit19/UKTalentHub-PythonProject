#UKTalentHUB
============ 
pyhton 3.10 
https://www.python.org/downloads/ 
Download Windows embeddable package (64-bit)
Download Windows installer (64-bit)
C:\Users\username

===========
pycharm  
https://www.jetbrains.com/pycharm/download/#section=windows 

============  
set up environment variables - system path 
Control Panel-->System and Security-->System - > Advanced system settings --> Enviroment Variable -->System Variables-->path-->Edit-->New-->paste the pyhton c:/path

--------------
Pycharm ---> File -->setting --> plugin --> cucumber 
Pycharm ---> File -->setting --> plugin --> gherkin
Pycharm ---> File --> setting --> projectname -->Pyhton Interpeter--> set non-interpeter in the drop down. 

-------------
allure - report 
https://repo.maven.apache.org/maven2/io/qameta/allure/allure-commandline/2.10.0/
unzip the file --> navigate to bin folder --> set the bin path into the enviroment variable

--------------
pip install selenium  :selinium libraries 
pip install pytest : Unit Test framework 
pip install pytest-html : PytestHtml report  
pip install pytest-xdist : run test in parallel 
pip install Openpyxl : MS Excel Support  
pip install Allure-pytest  to generate reports 
pip install webdriver-manager 
pip install behave
pip intall driver

============== 
clone Framework: 
git clone https://github.com/UlissesDaSilvaProjectdemo/UKTalentHub-PythonProject.git

============== 
page object imports:#  
import softest 
import self 
import driver from testCases import TC006_third_solution 
from selenium import webdriver 
from selenium.webdriver.common.by import By 
from selenium.webdriver.common.keys import Keys 
from selenium.webdriver.support.wait import WebDriverWait 
from selenium.webdriver.support import expected_conditions as EC 
from selenium.webdriver import ActionChains 

============= 
import testCases Imports:#  
import pytest 
from selenium import webdriver 
from selenium.webdriver.common.keys import Keys 
from selenium.webdriver.support.wait import WebDriverWait 
from webdriver_manager import driver 
from pageObjects.TC006_third_solutionPage import TC006_third_solutionPage 
from utilities.readProperties import ReadConfig 
from utilities.customLogger import LogGen 
================ 
execution:
behave testCases/features/TC001_loginNegativePath.feature
behave testCases/selenium/TC004_drag_and_drop.feature
pytest -s -v  --html=.Reports/report.html testCases/TC001_LoginTest.py --browser chrome
pytest -s -v  --html=.Reports/report.html testCases/TC002_LinksSmokeTest.py --browser chrome
pytest -s -v  --html=.Reports/report.html testCases/TC004_RestAPI.py --browser chrome
# UKTalentHub-PythonProject

