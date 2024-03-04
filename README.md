## Description
This repository contains a MySQL script for creating a database schema to manage flights in a fictional aviation system. The script creates tables for airplanes (Avion), pilots (Pilote), and flights (Vol), with relationships between them. Sample data is inserted to demonstrate the functionality of the database schema. The script also includes queries for data manipulation and retrieval.

## Database Schema Description:
**1. Avion:**
  - ID_A: Unique identifier for airplanes.
  - NomAvion: Name of the airplane.
  - Capacite: Capacity of the airplane.
  - Localite: Location of the airplane.  

**2. Pilote:**
  - ID_P: Unique identifier for pilots.
  - NomPilote: Name of the pilot.
  - Adresse: Address of the pilot.  

**3. Vol:**
  - ID_V: Unique identifier for flights.
  - ID_A: ID of the airplane for the flight.
  - ID_P: ID of the pilot for the flight.
  - VilleDepart: Departure city of the flight.
  - VilleArrivee: Arrival city of the flight.
  - HeureDepart: Departure time of the flight.
  - HeureArrivee: Arrival time of the flight.
