SCRIPTS_DIR := scripts
CODEGEN_SCRIPT := $(SCRIPTS_DIR)/build_runner.sh

codegen:
	sh $(CODEGEN_SCRIPT) 

clean: 
	flutter clean && flutter pub get