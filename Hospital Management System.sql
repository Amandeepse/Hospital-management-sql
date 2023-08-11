Hospital Management System
ERD:
SQL code:
create database HMS use HMS
CREATE TABLE department( [department_id] [int] NOT NULL PRIMARY KEY, [dep_name] varchar NOT NULL, [dep_head] varchar NOT NULL, );
CREATE TABLE employee( [employee_id] [int] NOT NULL PRIMARY KEY, [employee_name] varchar NOT NULL, [DoB] [date] NOT NULL, [joinning_date] [date] NOT NULL, [emp_type] varchar NOT NULL, [email] varchar NOT NULL, [address] varchar NOT NULL, [salary] [int] NOT NULL, [date_of_leaveing] [date] NOT NULL, [department_id] [int] NOT NULL foreign key references [department]);
CREATE TABLE Medicine( [medicine_id] [int] NOT NULL PRIMARY KEY, [medicine_name] varchar NOT NULL, [quantity] [int] NOT NULL, [date] [date] NOT NULL,
[medicine_cost] nchar NOT NULL, [patient_id] [int] NOT NULL foreign key references [patient]);
CREATE TABLE patient( [patient_id] [int] NOT NULL PRIMARY KEY, [patient_name] varchar NOT NULL, [phone_no] varchar NOT NULL, [blood_group] varchar NOT NULL, [email] varchar NOT NULL, [gender] varchar NOT NULL, [address] varchar NOT NULL, [disease] varchar NOT NULL, [arrival_date] [date] NOT NULL, [discharge_date] [date] NOT NULL, );
create table Bill ( [payment_id] [int] NOT NULL PRIMARY KEY, [date] [date] NOT NULL, [room_cost] [int] NOT NULL, [othercharge] [int] NULL, [mcost] [int] NOT NULL, [Total] [int] NOT NULL, [patient_id] [int] NOT NULL foreign key references [patient]);
CREATE TABLE doctor( [doctor_id] [int] NOT NULL PRIMARY KEY, [qualification] varchar NOT NULL, [patient_id] [int] NOT NULL foreign key references [patient], [employee_id] [int] NOT NULL foreign key references [employee]);
CREATE TABLE nurse( [nurse_id] [int] NOT NULL PRIMARY KEY, [patient_id] [int] NOT NULL foreign key references [patient], [employee_id] [int] NOT NULL foreign key references [employee]);
CREATE TABLE reletive( [reletive_id] [int] NOT NULL PRIMARY KEY, [reletive_name] varchar NOT NULL, [reletive_contact] varchar NOT NULL, [relation] varchar NOT NULL, [patient_id] [int] NOT NULL foreign key references [patient]);
CREATE TABLE room( [room_id] [int] NOT NULL PRIMARY KEY, [room_type] varchar NOT NULL, [patient_id] [int] NOT NULL foreign key references [patient], [room_cost] [int] NOT NULL);
ALTER DATABASE [HMS1] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [HMS1] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [HMS1] SET CURSOR_DEFAULT GLOBAL
GO
ALTER DATABASE [HMS1] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [HMS1] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [HMS1] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [HMS1] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [HMS1] SET ENABLE_BROKER
GO
ALTER DATABASE [HMS1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [HMS1] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [HMS1] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [HMS1] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [HMS1] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [HMS1] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [HMS1] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [HMS1] SET RECOVERY FULL
GO
ALTER DATABASE [HMS1] SET MULTI_USER
GO
ALTER DATABASE [HMS1] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [HMS1] SET DB_CHAINING OFF
GO
ALTER DATABASE [HMS1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF )
GO
ALTER DATABASE [HMS1] SET TARGET_RECOVERY_TIME = 0 SECONDS
GO
ALTER DATABASE [HMS1] SET READ_WRITE
GO
Relational schema: