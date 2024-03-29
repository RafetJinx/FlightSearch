USE [flight_search]
GO
/****** Object:  Table [dbo].[Airline]    Script Date: 7.02.2024 21:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Airline](
	[id] [bigint] NOT NULL,
	[airlineCode] [nvarchar](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Airport]    Script Date: 7.02.2024 21:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Airport](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[iataCode] [nvarchar](3) NULL,
	[cityId] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaseUser]    Script Date: 7.02.2024 21:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaseUser](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[createDate] [datetime2](7) NOT NULL,
	[isActive] [bit] NOT NULL,
	[username] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 7.02.2024 21:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[countryId] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 7.02.2024 21:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[taxId] [nvarchar](50) NULL,
	[name] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyContactNumber]    Script Date: 7.02.2024 21:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyContactNumber](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[companyId] [bigint] NOT NULL,
	[contactNumber] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyEmail]    Script Date: 7.02.2024 21:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyEmail](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[companyId] [bigint] NOT NULL,
	[email] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyEmployee]    Script Date: 7.02.2024 21:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyEmployee](
	[id] [bigint] NOT NULL,
	[companyId] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 7.02.2024 21:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Flight]    Script Date: 7.02.2024 21:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flight](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FlightDetails]    Script Date: 7.02.2024 21:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlightDetails](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[flightId] [bigint] NOT NULL,
	[flightTypeId] [int] NOT NULL,
	[flightNumber] [nvarchar](50) NOT NULL,
	[departureAirportId] [bigint] NOT NULL,
	[arrivalAirportId] [bigint] NOT NULL,
	[departureTime] [datetime2](7) NOT NULL,
	[arrivalTime] [datetime2](7) NOT NULL,
	[price] [decimal](19, 4) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FlightType]    Script Date: 7.02.2024 21:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlightType](
	[id] [int] NOT NULL,
	[type] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IndividualUser]    Script Date: 7.02.2024 21:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndividualUser](
	[id] [bigint] NOT NULL,
	[personalId] [nvarchar](50) NULL,
	[firstName] [nvarchar](255) NOT NULL,
	[lastName] [nvarchar](255) NOT NULL,
	[phoneNumber] [nvarchar](50) NULL,
	[email] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Airline]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[Company] ([id])
GO
ALTER TABLE [dbo].[Airport]  WITH CHECK ADD FOREIGN KEY([cityId])
REFERENCES [dbo].[City] ([id])
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD FOREIGN KEY([countryId])
REFERENCES [dbo].[Country] ([id])
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_City_Country] FOREIGN KEY([countryId])
REFERENCES [dbo].[Country] ([id])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_City_Country]
GO
ALTER TABLE [dbo].[CompanyContactNumber]  WITH CHECK ADD FOREIGN KEY([companyId])
REFERENCES [dbo].[Company] ([id])
GO
ALTER TABLE [dbo].[CompanyEmail]  WITH CHECK ADD FOREIGN KEY([companyId])
REFERENCES [dbo].[Company] ([id])
GO
ALTER TABLE [dbo].[CompanyEmployee]  WITH CHECK ADD FOREIGN KEY([companyId])
REFERENCES [dbo].[Company] ([id])
GO
ALTER TABLE [dbo].[CompanyEmployee]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[IndividualUser] ([id])
GO
ALTER TABLE [dbo].[FlightDetails]  WITH CHECK ADD FOREIGN KEY([arrivalAirportId])
REFERENCES [dbo].[Airport] ([id])
GO
ALTER TABLE [dbo].[FlightDetails]  WITH CHECK ADD FOREIGN KEY([departureAirportId])
REFERENCES [dbo].[Airport] ([id])
GO
ALTER TABLE [dbo].[FlightDetails]  WITH CHECK ADD FOREIGN KEY([flightId])
REFERENCES [dbo].[Flight] ([id])
GO
ALTER TABLE [dbo].[FlightDetails]  WITH CHECK ADD FOREIGN KEY([flightTypeId])
REFERENCES [dbo].[FlightType] ([id])
GO
ALTER TABLE [dbo].[IndividualUser]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[BaseUser] ([id])
GO
