echo "Setting up a virtual environment.."
python -m venv venv

echo "Activating the virtual environment.."
# try to set up on a mac or linux
source venv/bin/activate
# try to set up on windows
. venv/Scripts/activate

echo "Installing 3rd party dependencies.."
pip install --upgrade pip
pip install -r requirements.txt

echo "Setting up the board using the Trello API.."
rem pytest -s -v testCases/TC004_RestAPI.py

echo "Running the pytest solution.."
<<<<<<< HEAD
rem pytest testCases/TC001_LoginTest.py --browser chrome
rem pytest testCases/TC002_LinksSmokeTest.py --browser chrome
rem pytest testCases/TC003_ImgsSmokeTest.py --browser chrome#
rem pytest testCases/TC004_RestAPI.py --browser chrome

echo "Running the pytest API solution.."
rem pytest testCases/TestAPI001_Get_ListUser.py
rem pytest testCases/TestAPI002_POST_Create_User.py
rem pytest testCases/TestAPI003_POST_Deserialization_Create_User.py
rem pytest testCases/TestAPI004_PUT_Update_User.py
rem pytest testCases/TestAPI005_PATCH_Update_User.py
rem pytest testCases/TestAPI006_DELETE_User.py
rem pytest testCases/TestAPI007_GET_TIMEOUT.py
rem pytest testCases/TestAPI008_AUTH_Username_Password.py
rem pytest testCases/TestAPI009_POST_GetAuthToken.py
=======

rem pytest -s -v  --html=.Reports/report.html testCases/TC002_LinksSmokeTest.py --browser chrome
rem pytest -s -v  --html=.Reports/report.html testCases/TC003_ImgsSmokeTest.py --browser chrome#
rem pytest -s -v  --html=.Reports/report.html testCases/TC004_RestAPI.py --browser chrome
>>>>>>> 5ca1e2bf5503a964cbe98c56b0d891b79e1579b7

echo "Running the BDD tests.."
behave testCases/features/TC001_loginNegativePath.feature
behave testCases/feature/TC002_trello_automation.feature
behave testCases/selenium/TC001_selecct_dropdown.feature
behave testCases/selenium/TC002_clickSendKeys.feature
behave testCases/selenium/TC003_RadioButtonsAndCheckboxes.feature
behave testCases/selenium/TC004_drag_and_drop.feature
behave testCases/selenium/TC005_mouse_hovering.feature
behave testCases/selenium/TC006_switch_to_alert.feature
behave testCases/selenium/TC007_switch_to_frame.feature
behave testCases/selenium/TC008_switch_to_window.feature
behave testCases/selenium/TC008_switch_to_window.feature
behave testCases/selenium/TC010_scrolling_element.feature
 





