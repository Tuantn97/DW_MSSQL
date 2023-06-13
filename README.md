## DataWareHouse_MSSQL.
Design a Datawarehouse to analyze revenue by region, employee, product.
The data used here is AdventureWorks2012, using some tables to summarize revenue reports, product reports by employee, Territory, Category
## DataWarehouse Design.
For the schema design, the STAR schema is used as it simplifies queries and provides fast aggregations of data.
<img width="807" alt="image" src="https://github.com/Tuantn97/DW_MSSQL/assets/130779401/56d3d516-458f-40ae-8ea4-86397660e1f9">

## Use SSIS to design a workflow.
Extract data from sources into a Stagging, after that Transform data and Load data in DataWareHouse.
### Create Data Flow.
<img width="342" alt="image" src="https://github.com/Tuantn97/DW_MSSQL/assets/130779401/574d39c9-955e-4507-9efa-b325d4fcbeae">

<img width="812" alt="image" src="https://github.com/Tuantn97/DW_MSSQL/assets/130779401/c1fc9674-d363-41f4-a9f6-2bf6819f264c">

## Use Power BI to visualize report.
<img width="641" alt="image" src="https://github.com/Tuantn97/DW_MSSQL/assets/130779401/7a40d889-7af8-4b15-952a-474aff753570">
