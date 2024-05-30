# Variables
PYTHON=python3
SRC_DIR=src
TEST_DIR=tests
TEST_RUNNER=pytest

# Define the test target
test:
    python3 -m pytest tests

.PHONY: test