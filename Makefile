# Variables
PYTHON=python3
SRC_DIR=src
TEST_DIR=tests
TEST_RUNNER=pytest

# Define the test target
test:
    $(PYTHON) -m $(TEST_RUNNER) $(TEST_DIR)

.PHONY: test