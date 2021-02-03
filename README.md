# Internet Game Database [IGDB] 

## About the Website:
 IGDB is a web application to browse and view your favorite games with reviews,  And add new games to review them.

 There is two user roles (Admin, User) **Admin** has all privileges (add delete edit view **games** and add delete edit view **reviews**) **User** can view all **games** added by the admin and add reviews to games, edit and delete the user's **reviews**.

## Technologies Used:
* Java, Spring Boot 
* Server, Apache Tomcat
* MVC Pattern
* MySQL Database
* Cascading Style Sheets and Bootstrap 
* JavaScript and HTML
* AWS, to deploy the web application
* GitHub, group project
* Git Bash

## User Stories:
* As not a registered user, I want to have signup button to click, so that I can create an account.
* As a registered user, I want to have login button to click, so that I can view my profile.  
* As a user, I want to have edit  profile button to click, so that I can edit my profile.  
* As a user, I want to view all games, so that I can access new added games.  
* As a user, I want to access all games, so that I can add my reviews.  
* As a user, I want to view my reviews, so that I can edit or delete my reviews.  
* As an admin, I want to have add game button to click, so that I can add new games.
* As an admin, I want to have edit game button to click, so that I can change the information of any game.
* As an admin, I want to have delete game button to click, so that I can remove any game from the database.

##  Wireframes:
<img src="https://i.ibb.co/7kk5kdw/513-F721-F-2-B8-E-4083-A32-D-03-ED91-B0-D35-B.jpg" width="500">

## Entity Relationship Diagram:
<img src="https://i.ibb.co/s9KB4Cf/02-AEEAAB-C522-4983-AC26-266-D9-F4-B0-A3-C.jpg" width="600">

## Work Planning:
<img src="https://i.ibb.co/BVjLvSy/372-ACC23-C56-B-4-A86-9-E43-D5-F017-B51248.jpg" width="500">
<img src="https://i.ibb.co/89YQjsg/3-D3-C1-ED6-956-F-4-B9-C-A4-C5-1-EA65633-E0-EA.jpg" width="500">

## Installation Instructions:
### System requirements: 
* Spring Boot, Build tool Maven
### Servlet Containers:
* Tomcat v9
### Creating the POM file 
* JPA dependency to accessing data:
```
<dependency>
			<groupId>org.springframework.boot</groupId>
			<artifactId>spring-boot-starter-data-jpa</artifactId>
		</dependency>
```
* MySQL dependency to connect database:
```
   <dependency>
			<groupId>mysql</groupId>
			<artifactId>mysql-connector-java</artifactId>
			<scope>runtime</scope>
		</dependency>
```
* Tomcat dependency:
```
	<dependency>
			<groupId>org.springframework.boot</groupId>
			<artifactId>spring-boot-starter-tomcat</artifactId>
			<scope>provided</scope>
		</dependency>
```
* Testing dependency:
```
	<dependency>
			<groupId>org.springframework.boot</groupId>
			<artifactId>spring-boot-starter-test</artifactId>
			<scope>test</scope>
		</dependency>
```
* Spring security dependency:
```
	<dependency>
			<groupId>org.springframework.security</groupId>
			<artifactId>spring-security-core</artifactId>
		</dependency>
```
##  Problems and unsolved problems:
* We  faced a problem of calculating the **rank** number by the user's **rate**. 
* We faced problems of **forgotPassword** and how to send the email and update the new email.
* We faced problem of **uploading** an image.

## The Future Work
 The user of our website will be able to follow friends and be a part of the community of game lovers to share ,rate and view games. 

## Resources
*  **https://www.codejava.net/frameworks/spring-boot/spring-security-forgot-password-tutorial**
* **https://codepen.io/**
* **https://getbootstrap.com/**