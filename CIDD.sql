CREATE TABLE Disease (
  disease_id INT PRIMARY KEY,
  strain_name VARCHAR(50),
  rate_of_spread DECIMAL(4,2),
  vaccine_type VARCHAR(50),
  vaccine_efficacy DECIMAL(4,2)
);

CREATE TABLE Affliction (
  affliction_id INT PRIMARY KEY,
  strain_name VARCHAR(50),
  fatality_rate DECIMAL(4,2),
  symptom_type VARCHAR(50),
  spread_type VARCHAR(50),
  hereditary BOOLEAN,
  disease_id INT,
  FOREIGN KEY (disease_id) REFERENCES Disease(disease_id)
);

CREATE TABLE Patient (
  phone_number VARCHAR(20) PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  address VARCHAR(100),
  hospital_id INT,
  FOREIGN KEY (hospital_id) REFERENCES Hospital(hospital_id)
);

CREATE TABLE Hospital (
  hospital_id INT PRIMARY KEY,
  name VARCHAR(100),
  address VARCHAR(100),
  type VARCHAR(20)
);

CREATE TABLE Treatment (
  treatment_id INT PRIMARY KEY,
  method VARCHAR(50),
  patient_phone VARCHAR(20),
  FOREIGN KEY (patient_phone) REFERENCES Patient(phone_number)
);

CREATE TABLE Outbreak (
  outbreak_id INT PRIMARY KEY,
  location VARCHAR(100),
  ongoing BOOLEAN,
  num_confirmed_cases INT,
  affliction_id INT,
  FOREIGN KEY (affliction_id) REFERENCES Affliction(affliction_id)
);

CREATE TABLE Researcher (
  ssn VARCHAR(20) PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50)
);

CREATE TABLE PHO (
  ssn VARCHAR(20) PRIMARY KEY,
  name VARCHAR(100),
  address VARCHAR(100)
);

CREATE TABLE Doctor (
  ssn VARCHAR(20) PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50)
);
