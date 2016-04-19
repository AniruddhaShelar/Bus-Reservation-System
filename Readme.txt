---------------Installation instructions for Windows --------

1. Install the python setup file in Installation folder

2. Install Xampp setup file in the Installation folder (if the given setup doesnot work please download a setup from https://www.apachefriends.org/download.html)

3. Set the environment variables 
	3.1. Go to My computer Properties
	3.2. Click on Advance System settings 
	3.3. Dialogue box will appear.Click on Environment Variables button
	3.4  Find Path variable in System variables box
	3.5 Select Path varible and click on edit button
	3.6 copy paste the followin at the end 
C:\Python34;C:\Python34\python.exe;C:\Python34\Scripts\;C:\Python34\Lib\site-packages\django\bin;C:\xampp\mysql\bin;

4.Go to start n type xampp
  	- open xampp control and start Apache and MySQL
	- Click on MySQL admin 
	- create a database named bus_reservation
	- Go into that Database bus_reservation
	- Import the bus_reservation.sql file into the database

5.Copy paste the whole project file  Bus_reservation system to desktop

Open Cmd
 - Go to the Directory where the project is to be created and enter the following commands
 - cd Desktop
 - cd Bus_reservation
 - .\Scripts\activate
 - cd src
 - python manage.py runserver
 - Goto your Browser and enter the following url
	http://localhost:8000/
 - For admin panel enter the following url
	http://localhost:8000/admin
 - #Login for admin panel :
 	Username = bus_admin
	password= bus123456 

-------------------------------------------------------------------------------------------------------------------

Additional information - How to create a project in Django steps

1. virtualenv Project_name_env
2. cd Shoplyne
3. .\Scripts\activate
4. pip insatall Django
5. .\Scripts\django-admin startproject Project_name
6. pip install mysqlclient==1.3.6
7. py manage.py startapp app_name
8. py manage.py migrate