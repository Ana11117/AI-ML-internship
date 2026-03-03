create database smartEV;
use smartEV;

create table users(
user_id int primary key auto_increment,
full_name varchar(100) not null,
email varchar(100) unique,
phone varchar(15),
city varchar(50),
registration_date date);

create table  charging_stations(
station_id int primary key auto_increment,
station_name varchar(100),
location varchar(100),
total_ports int,
fast_charging boolean
);

CREATE TABLE Vehicles (
    vehicle_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    vehicle_model VARCHAR(100),
    battery_capacity_kwh DECIMAL(5,2),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Charging_Sessions (
    session_id INT PRIMARY KEY AUTO_INCREMENT,
    vehicle_id INT,
    station_id INT,
    start_time DATETIME,
    end_time DATETIME,
    units_consumed DECIMAL(6,2),
    total_cost DECIMAL(8,2),
    FOREIGN KEY (vehicle_id) REFERENCES Vehicles(vehicle_id),
    FOREIGN KEY (station_id) REFERENCES Charging_Stations(station_id)
);

INSERT INTO Users (full_name, email, phone, city, registration_date) VALUES
('Rohan Mehta', 'rohan@gmail.com', '9876543210', 'Bangalore', '2024-01-15'),
('Ananya Iyer', 'ananya@gmail.com', '9123456780', 'Chennai', '2024-02-10'),
('Vikram Rao', 'vikram@gmail.com', '9988776655', 'Hyderabad', '2024-03-05'),
('Neha Sharma', 'neha@gmail.com', '9001122334', 'Mumbai', '2024-01-25');

INSERT INTO Charging_Stations (station_name, location, total_ports, fast_charging) VALUES
('GreenCharge Hub', 'Indiranagar', 8, TRUE),
('VoltPoint Station', 'Koramangala', 6, TRUE),
('EcoPlug Center', 'Whitefield', 4, FALSE);

INSERT INTO Vehicles (user_id, vehicle_model, battery_capacity_kwh) VALUES
(1, 'Tata Nexon EV', 40.50),
(2, 'MG ZS EV', 44.50),
(3, 'Hyundai Kona Electric', 39.20),
(1, 'Mahindra XUV400', 34.50);

INSERT INTO Charging_Sessions 
(vehicle_id, station_id, start_time, end_time, units_consumed, total_cost)
VALUES
(1, 1, '2024-03-01 10:00:00', '2024-03-01 11:30:00', 18.5, 370.00),
(2, 2, '2024-03-02 09:00:00', '2024-03-02 10:15:00', 15.0, 300.00),
(3, 1, '2024-03-03 14:00:00', '2024-03-03 15:00:00', 12.0, 240.00),
(1, 3, '2024-03-04 18:00:00', '2024-03-04 19:45:00', 20.0, 400.00);

show databases;
 use smartEV;
 show tables;
 select * from users;
  select * from charging_sessions;
  select * from charging_stations;
  select * from vehicles;
  select full_name,email,city from users;
  select full_name,email,city from users LIMIT 2;
  select full_name,email,city from users LIMIT 2 OFFSET 1;
  select * from charging_stations;
   select count(*) from  charging_stations;
   select count(*) as Total from  charging_stations;
   select * from charging_stations where  total_ports>5;
    select * from charging_stations where  total_ports>5 order by  total_ports;
    select sum(total_ports) from charging_stations;
    select avg(total_ports) from charging_stations;
    select round(avg(total_ports)) as Average from charging_stations;
     select round(avg(total_ports),0) as Average from charging_stations;
     select round(avg(total_ports),2) as Average from charging_stations;
      select * from charging_sessions;
      select session_id,sum(total_cost) as Revenue from  charging_sessions group by(session_id);
       select station_id,sum(total_cost) as Revenue from  charging_sessions group by(station_id);
       select station_id,sum(total_cost) as Revenue from  charging_sessions group by(station_id) having sum(total_cost)>350;
       
  
 