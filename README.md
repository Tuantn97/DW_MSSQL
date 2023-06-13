## DataWareHouse_MSSQL.
Design a Datawarehouse to analyze revenue by region, employee, product.
The data used here is AdventureWorks2012, using some tables to summarize revenue reports, product reports by employee, Territory, Category
## DataWarehouse Design.
For the schema design, the STAR schema is used as it simplifies queries and provides fast aggregations of data.
<img width="806" alt="image" src="https://github.com/Tuantn97/DataWareHouse_MSSQL/assets/130779401/ad86d6b2-d05b-40f8-bc50-914858a40a2b">
## Use SSIS to design a workflow.
Extract data from sources into a Stagging, after that Transform data and Load data in DataWareHouse.
### Create Data Flow.
<img width="350" alt="image" src="https://github.com/Tuantn97/DataWareHouse_MSSQL/assets/130779401/a6f0bab9-fc65-43b3-b17d-00af64b76c65">

<img width="830" alt="image" src="https://github.com/Tuantn97/DataWareHouse_MSSQL/assets/130779401/68e22682-e549-4e38-b2f4-ca43d8f4b612">

## Use Power BI to visualize report.
![image](https://github.com/Tuantn97/DataWareHouse_MSSQL/assets/130779401/001a8527-fca1-4aa4-b22d-61a74166e941)
