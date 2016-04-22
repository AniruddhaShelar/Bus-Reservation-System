# Bus-Reservation-System
Bus Reservation System is a preety basic system developed in Django,MySQL,Python, which is designed to automate the online ticket purchasing through an easy online bus booking system.With the bus ticket reservation system you can manage/book reservations, clients data and passengers lists through its Django admin and book tickets effortlessly through the Bus reservation Website.

---------------Installation instructions for Windows --------

1. Install the python 3.4 setup 

2. Install Xampp setup (please download a setup from https://www.apachefriends.org/download.html)

3. Set the environment variables 
	- Go to My computer Properties
	- Click on Advance System settings 
	- Dialogue box will appear.Click on Environment Variables button
	- Find Path variable in System variables box
	- Select Path variable and click on edit button
	- copy paste the following at the end    
C:\Python34;C:\Python34\python.exe;C:\Python34\Scripts\;C:\Python34\Lib\site-packages\django\bin;C:\xampp\mysql\bin;

4.Go to start n type xampp
  	- open xampp control and start Apache and MySQL
	- Click on MySQL admin 
	- create a database named bus_reservation
	- Go into the Database 'bus_reservation'
	- Import the bus_reservation.sql file into the database

5.Copy paste the whole project file  Bus_reservation system to desktop

6. Open file Desktop\Bus_reservation\src\Bus_reservation\settings.py and change the templates Dir Path on line no.64 to your desktop Bus_reservation templates folder

Open Cmd
 - Go to the Directory where the project is to be created and enter the following commands
 - cd Desktop
 - cd Bus_reservation
 - .\Scripts\activate
 -  pip install Django
 -  pip install mysqlclient==1.3.6
 - cd src
 - python manage.py runserver
 - Goto your Browser and enter the following url
	http://localhost:8000/
 - For admin panel enter the following url
	http://localhost:8000/admin
 - #Login for admin panel :
 	Username = bus_admin
	password= bus123456 

