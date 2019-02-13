DB=ingredientguru
BUILD=${CURDIR}/build.sql
SCRIPTS=${CURDIR}/
MASTER=$(SCRIPTS)/import.sql
NORMALIZE = $(SCRIPTS)/normalize.sql 

all: normalize
		cat $(BUILD) | envsubst | psql $(DB)


import:
		@cat $(MASTER) >> $(BUILD)

normalize: import
		@cat $(NORMALIZE) >> $(BUILD)

clean:
		@rm -rf $(BUILD)
