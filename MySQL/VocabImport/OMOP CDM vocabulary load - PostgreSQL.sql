/*********************************************************************************
# Copyright 2014 Observational Health Data Sciences and Informatics
#
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
********************************************************************************/

/************************

 ####### #     # ####### ######      #####  ######  #     #           ####### 
 #     # ##   ## #     # #     #    #     # #     # ##   ##    #    # #       
 #     # # # # # #     # #     #    #       #     # # # # #    #    # #       
 #     # #  #  # #     # ######     #       #     # #  #  #    #    # ######  
 #     # #     # #     # #          #       #     # #     #    #    #       # 
 #     # #     # #     # #          #     # #     # #     #     #  #  #     # 
 ####### #     # ####### #           #####  ######  #     #      ##    #####  
                                                                              

Script to load the common data model, version 5.0 vocabulary tables for MySQL database on Windows (MS-DOS style file paths)
The database account running this script must have the "superuser" permission in the database.

Notes

1) There is no data file load for the SOURCE_TO_CONCEPT_MAP table because that table is deprecated in CDM version 5.0
2) This script assumes the CDM version 5 vocabulary zip file has been unzipped into the "C:\omopv5" directory. You can get your file from http://athena.ohdsi.org.
3) If you unzipped your CDM version 5 vocabulary files into a different directory then replace all file paths below, with your directory path.
4) Truncate each table that will be lodaed below, before running this script.


Original authors: Lee Evans
Derived from postgres OMOP CDM scripts. 

author:  Lieven Vaneeckhaute


*************************/

use omop;

-- Move the files to the directory :
-- SHOW VARIABLES LIKE "secure_file_priv";
LOAD DATA LOCAL INFILE 'C:\\omopv5\\DRUG_STRENGTH.csv' INTO TABLE drug_strength  FIELDS TERMINATED BY '\t' ESCAPED BY '\b' IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'C:\\omopv5\\CONCEPT.csv' INTO TABLE CONCEPT FIELDS TERMINATED BY '\t' ESCAPED BY '\b' IGNORE 1 LINES ;

LOAD DATA LOCAL INFILE 'C:\\omopv5\\CONCEPT_RELATIONSHIP.csv' INTO TABLE CONCEPT_RELATIONSHIP FIELDS TERMINATED BY '\t' ESCAPED BY '\b' IGNORE 1 LINES ;

LOAD DATA LOCAL INFILE 'C:\\omopv5\\CONCEPT_ANCESTOR.csv' INTO TABLE CONCEPT_ANCESTOR FIELDS TERMINATED BY '\t' ESCAPED BY '\b' IGNORE 1 LINES ;

LOAD DATA LOCAL INFILE 'C:\\omopv5\\CONCEPT_SYNONYM.csv' INTO TABLE CONCEPT_SYNONYM FIELDS TERMINATED BY '\t' ESCAPED BY '\b' IGNORE 1 LINES ;

LOAD DATA LOCAL INFILE 'C:\\omopv5\\VOCABULARY.csv' INTO TABLE VOCABULARY FIELDS TERMINATED BY '\t' ESCAPED BY '\b' IGNORE 1 LINES ;

LOAD DATA LOCAL INFILE 'C:\\omopv5\\RELATIONSHIP.csv' INTO TABLE RELATIONSHIP FIELDS TERMINATED BY '\t' ESCAPED BY '\b' IGNORE 1 LINES ;

LOAD DATA LOCAL INFILE 'C:\\omopv5\\CONCEPT_CLASS.csv' INTO TABLE CONCEPT_CLASS FIELDS TERMINATED BY '\t' ESCAPED BY '\b' IGNORE 1 LINES ;

LOAD DATA LOCAL INFILE 'C:\\omopv5\\DOMAIN.csv' INTO TABLE DOMAIN FIELDS TERMINATED BY '\t' ESCAPED BY '\b' IGNORE 1 LINES ;

