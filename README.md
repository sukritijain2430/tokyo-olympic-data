# tokyo-olympic-data
This project deals with Tokyo Olympics 2021 dataset. This project involves understanding the data architecture, creating the ETL pipeline, and finally analysing the data. The project is based off Darshil Parmar video on YouTube. This contains the details of over 11,000 athletes, with 47 disciplines, along with 743 Teams taking part in the 2021(2020) Tokyo Olympics. This dataset contains the details of the Athletes, Coaches, Teams participating as well as the Entries by gender. It contains their names, countries represented, discipline, gender of competitors, name of the coaches.

There are 5 datasets from which the data was extracted to perform analysis.

Athletes data: The file contains all athletes data. Columns: Name, Name of Country (NOC) and Discipline
Coaches data: The file contains coaches names. Columns: Name, Name of Country (NOC), Discipline and Event
Entries Gender data: The file contains males and females data. Columns: Discipline, Female, Male and Total
Medals data: The file contains ranks and all the three medals. Columns: Rank, Team/NOC, Gold, Silver, Bronze, Total, Rank by Total
Teams Data: The file contains all the teams. Columns: Name, Name of Country (NOC), Discipline and Event
Source of the dataset: Link

Data Architecture
<img src="screenshots/data architecture.png">

Data Ingestion
Extract the data from the the github as a source using Azure Data Factory tool, building a data flow and loading it into Azure Data Lake storage:
<img src="screenshots/data pipeline.png">

Data Transformation in Azure Databricks:
Write the code in Python to read the data stored in the Azure data lake, perform the transformations and then load the back to Azure data lake Gen 2
<img src="screenshots/rawdata.png">
<img src="screenshots/databricks.png">

Here you upload your transformed data in ADLS Gen 2:
<img src="screenshots/transformdata.png">

Data Analysis
The final step is to analyse and derive important insights from this data using SQL.

Calculating the total number of athletes from ran 1 to 10 country

<img src="screenshots/athletes_by_country.png">

Total no of athletes by discipline for top 5 country
<img src="screenshots/athletes_by_discipline_country.png">

Total no.of coaches by discipline
<img src="screenshots/coaches_by_discipline.png">

No of coaches in the country who won the highest medals
<img src="screenshots/coaches_by_country.png">

-- calculate the average number of entries by gender for each discipline
<img src="screenshots/male_female.png">

Total no.of teams by each country
<img src="screenshots/teams_by_country.png">
