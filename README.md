[![Apache License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) ![dbt logo and version](https://img.shields.io/static/v1?logo=dbt&label=dbt-version&message=1.x&color=orange)

# Metriport Connector

## 🔗 Docs

Check out our [docs](https://thetuvaproject.com/) to learn about the Tuva Project and how you can use it on your healthcare data.
<br/><br/>

## 🧰 What does this repo do?

The Metriport Connector is a dbt project that maps flattened Metriport FHIR data to the Tuva input layer, and then builds all of the available clinical Tuva Data Marts. You can flatten Metriport FHIR data into the tabular format this project expects using the [FHIR_Inferno](https://github.com/tuva-health/FHIR_connector) utility and the provided Metriport configuration files. See our [guide](https://www.example.com/linkToGuideHere) for a more detailed step by step walkthrough of that process.
<br/><br/>

## 🔌 Database Support

- BigQuery
- Redshift
- Snowflake
  <br/><br/>

## ✅ Quickstart Guide

### Step 1: Pre-requisites

You must have Metriport data in FHIR format that has been flattened and loaded to your warehouse. See the [FHIR_inferno](https://github.com/tuva-health/FHIR_inferno) repo including the [Metriport configurations](https://github.com/tuva-health/FHIR_inferno/tree/main/configurations/configuration_Metriport), and the [FHIR preprocessing guide](https://thetuvaproject.com/guides/fhir-preprocessing). You must have dbt installed and a profile set up, or you must have a connection to your warehouse set up in dbt cloud.
<br/><br/>

### Step 2: Configure Input Database and Schema

Next you need to tell dbt where your source data is located.

- In the `dbt_project.yml` file, specify these variables: `input_database`, `input_schema`, and `profile`.

For your tests, also set up the following:

- In the `integration_tests/profiles/<your-preferred-database>/profile.yml`, see the environment variables required for the successful connection.
- Point dbt to the desired profile by setting up the env var, like so:
  `export DBT_PROFILES_DIR=full/path/to/integration_tests/profiles/snowflake`

<br/><br/>

### Step 3: dbt deps && dbt debug

Execute the command `dbt deps` to install The Tuva Project. By default, this connector will use any version of the Tuva Project after 0.5.0 which is when clinical support was released.

Execute the command `dbt debug` to ensure your data warehouse connection is successful.
<br/><br/>

### Step 4: Run

Now you're ready to run the connector and the Tuva Project. For example, using dbt CLI you would `cd` to the project root folder in the command line and execute `dbt build`. You're now ready to do clinical data analytics! Check out the [data mart](https://thetuvaproject.com/data-marts/about) in our docs to learn what tables you should query.
<br/><br/>

## 🙋🏻‍♀️ How do I contribute?

Have an opinion on the mappings? Notice any bugs when installing and running the project?
If so, we highly encourage and welcome feedback! Feel free to submit an issue or drop a message in Slack.
<br/><br/>

## 🤝 Join our community!

Join our growing community of healthcare data practitioners on [Slack](https://join.slack.com/t/thetuvaproject/shared_invite/zt-16iz61187-G522Mc2WGA2mHF57e0il0Q)!
