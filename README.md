# DBT Project for Mia Share Platform

## Overview

This DBT project is designed to create a data pipeline for the Mia Share platform. The project includes bronze, silver, and gold models to transform raw data into analytics-ready tables. The project aims to address key business questions related to school activities, program enrollments, revenue contributions by account executives, payment plan statuses, and tuition revenue capture.

## Steps Taken

1. **Source Configuration**: 
   - Configured the MySQL source with the necessary database and schema details.
   - Documented source tables in the `schema.yml` file to ensure clear understanding and mapping of the raw data.

2. **Model Creation**: 
   - Created bronze models to load raw data from the source.
   - Developed silver models to clean, transform, and join data from the bronze models.
   - Built gold models to answer specific business questions and materialized them as tables for performance optimization.

3. **Documentation**: 
   - Added YAML files for each gold model to describe the model's purpose and columns.
   - Ensured proper documentation of all models, columns, and sources.

4. **Configuration**: 
   - Configured the gold models to be materialized as tables using the `config` function in each model file.
   - Ensured consistent naming conventions and clear directory structure for better organization and maintainability.

5. **Testing**: 
   - Implemented basic schema and data tests to validate the integrity and accuracy of the models.
   - Recommended the use of a CI/CD pipeline for automated testing and deployment.

## Assumptions

- The database and schema names for the MySQL source are both set to `forge` to avoid any mismatch issues.
- The data required to answer the business questions is available and correctly mapped in the provided tables.
- The gold models are materialized as tables to improve performance and make them readily available for analytics.
- The DBT project follows a directory structure that separates the models into bronze, silver, and gold layers for clarity and modularity.
