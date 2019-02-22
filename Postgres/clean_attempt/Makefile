DB=ingredientguru
BUILD=${CURDIR}/build.sql
SCRIPTS=${CURDIR}/
IMPORT=$(SCRIPTS)/import.sql
NORMALIZE = $(SCRIPTS)/normalize.sql 

all: normalize	
		@cat $(BUILD) | envsubst | psql $(DB)

import:
		@cat $(IMPORT) >> $(BUILD)

normalize: import
		@cat $(NORMALIZE) >> $(BUILD)

clean:
		@rm -rf $(BUILD)
