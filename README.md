# ITAMMEN

## Project Overview
ITAMMEN is a test automation project designed to streamline the testing process for applications by leveraging the Robot Framework. This project provides modular test cases, global variables, and reusable resources to ensure efficient and scalable automation workflows.

## Project Structure

- **`.idea/`**
  Contains IDE-specific configurations (e.g., PyCharm settings).

- **`global_variables.py`**
  A Python file defining global variables that are used across the test cases and resources.

- **`Resources/`**
  This directory contains the following sub-components:
  - **`Assertions/`**: Custom keywords or functions to validate test results and ensure accuracy.
  - **`Locators/`**: Stores locator files, such as XPath, CSS selectors, or IDs, used to interact with UI elements.
  - **`Keywords/`**: Contains reusable keywords and functions that abstract common test operations.
  - **`Pages/`**: Each page or feature is organized into 4 main files:
    - **`namepage.robot`**: Contains the full test scenario for the page.
    - **`Assertions/`**: Specific validations or assertions for the page.
    - **`Locators/`**: Locator files specific to the page elements.
    - **`Keywords/`**: Reusable operations or actions tailored to the page.

- **`TestCases/`**
  Contains the main Robot Framework test case files. Each file references scenarios defined in the `Resources/Pages/` directory for execution. For example:
  - `login_tests.robot`: Runs all scenarios related to the login page.

- **`Results/`**
  Stores the output from test executions, including logs, reports, and debug files.

- **`__pycache__/`**
  A directory for Python bytecode files generated automatically during execution.

## Prerequisites

1. **Python** (3.x recommended): Ensure Python is installed on your system.
   - Download it from [Python Official Website](https://www.python.org/).

2. **Robot Framework**: Install using pip:
   ```bash
   pip install robotframework
   ```

3. **Other Dependencies**:
   If the project requires additional libraries, install them as listed in the `requirements.txt` or documentation.

## How to Run the Tests

1. Clone the repository:
   ```bash
   git clone https://github.com/your_username/ITAMMEN.git
   cd ITAMMEN
   ```

2. Run the desired test cases using the Robot Framework:
   ```bash
   robot -d Results TestCases/
   ```
   - The `-d Results` flag specifies the directory to store logs and reports.

3. View the results:
   - Open `Results/log.html` and `Results/report.html` in a browser to analyze the test results.

## Contribution
If you'd like to contribute to this project:

1. Fork the repository.
2. Create a new branch for your feature or bug fix:
   ```bash
   git checkout -b feature-name
   ```
3. Commit your changes and push to your fork.
4. Open a pull request on the original repository.



