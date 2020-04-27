# USFWS Disclaimer
The United States Fish and Wildlife Service (FWS) GitHub project code is provided on 
an "as is" basis and the user assumes responsibility for its use. FWS has relinquished 
control of the information and no longer has responsibility to protect the integrity, 
confidentiality, or availability of the information. Any reference to specific 
commercial products, processes, or services by service mark, trademark, manufacturer, 
or otherwise, does not constitute or imply their endorsement, recommendation or 
favoring by FWS. The FWS seal and logo shall not be used in any manner to imply 
endorsement of any commercial product or activity by FWS or the United States 
Government.

# refugetools
An R package in development that contains useful functions for planning and implementing Refuge 
Inventory and Monitoring (I&M) projects in Alaska.

* `create.dir` creates a project directory using the Alaska I&M project directory template  
* `dublin` creates a Dublin core metadata file 
* `mdeditor` accesses the mdEditor tool for creating and editing metadata
* `import.ats` imports and formats Telonics Iridium GPS collar data
* `import.ats` imports and formats ATS GlobalStar GPS collar data

## Instructions
```(r)
# install.packages("devtools")
devtools::install_github("USFWS/refugetools")
```
