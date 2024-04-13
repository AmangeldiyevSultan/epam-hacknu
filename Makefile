SCRIPTS_DIR := scripts
CODEGEN_SCRIPT := $(SCRIPTS_DIR)/build_runner.sh

codegen:
	flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs

clean: 
	flutter clean && flutter pub get