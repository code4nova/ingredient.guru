DB=abuchholz
BUILD=${CURDIR}/build.sql
SCRIPTS=${CURDIR}/
#CSV='${CURDIR}/master_plan.csv'
MASTER=$(SCRIPTS)/import.sql
NORMALIZE = $(SCRIPTS)/normalize.sql 

all: normalize
	psql $(DB) -f $(BUILD)

master:
	@cat $(MASTER) >> $(BUILD)

import: master

normalize: import
	@cat $(NORMALIZE) >> $(BUILD)

clean:
	@rm -rf $(BUILD)

