#!/bin/bash
#SVN_URL = "https://svn.persistent.co.in/svn/DevOps_Compt/Hemant_Chaudhari/CaseStudyFolder"

svn delete -m "deleting old file" https://svn.persistent.co.in/svn/DevOps_Compt/Hemant_Chaudhari/CaseStudyFolder/CaseStudyVulnerability.war --non-interactive --trust-server-cert --username $1 --password $2

svn import -m "Importing latest file" app/CaseStudyVulnerability.war https://svn.persistent.co.in/svn/DevOps_Compt/Hemant_Chaudhari/CaseStudyFolder/CaseStudyVulnerability.war --non-interactive --trust-server-cert --username $1 --password $2