# CI/CD Templates

CI/CD pipeline templates for Python, TypeScript, R and Docker that include security checks, linters, static analysis and secrets checkers for each language/tool. Use the templates to ensure that your code is following best practices throughout your development.

## See How The Pipelines Work 

To see any of the pipelines in action for an example, pull all of the contents of the folder (CI-CD-Template-Language) to the root and see the pipeline run under CI/CD Pipelines on the Gitlab server.

---

## Python Template

### How To Use The Template

1.   Copy the `.gitlab-ci.yml` file into your root directory
    
2.   Copy the `requirements.txt` file into your root directory OR add the contents of the `requirements.txt` file from the template to the existing `requirements.txt` in your repository
    
3.   Changes to make in the `.gitlab-ci.yml` file

      * Line 24: change to the appropriate path where your python files are located in your repository

      * Line 29: change to the appropriate path where your python files are located in your repository

    
4.	Create a `.secrets.baseline` file

	-	On your local machine, run the following from the terminal while in the root directory of your project: 
	```
	pip install detect-secrets 
	detect-secrets scan > .secrets.baseline
	```

	-	The second command will create a `.secrets.baseline` file

	-	Create a directory called `.ci` and put your newly created `.secrets.baseline` file into it


5.   Ensure that you have a `test_module.py` file that follows rules for pytest. See link to pytest documentation below.

### Tools Being Used
|Purpose                                  |Tool                           |Documentation                         |
|-----------------------------------------|-------------------------------|-----------------------------|
|Linting and Static Analysis.             |flake8                         |[Flake8 Documentation](https://flake8.pycqa.org/en/latest/)            |
|Linting                                  |pylint                         |[Pylint Documentation](https://pylint.pycqa.org/en/latest/user_guide/index.html)            |
|Checking for Vulnerabilities/Dependencies|pip-audit                      |[Pip-Audit Documentation](https://pypi.org/project/pip-audit/)|
|Secret Detection                         |detect-secrets                 |[Detect-Secrets Documentation](https://github.com/Yelp/detect-secrets)                             |
|Testing                                  |pytest                         |[Pytest Documentation](https://docs.pytest.org/en/7.0.x/how-to/index.html#how-to)                             |

### Interpreting Output
After adding the yml file to your root directory, the pipeline will run automatically on the gitlab server. You can see each job’s output by navigating to the CI/CD tab on the left. Each job’s output can be seen by clicking on the check marks (or x’s if the job failed). Make changes based on the output of the jobs until all stages pass with a check mark.

## Typescript Template

### How To Use The Template
1.   Copy the `.gitlab-ci.yml file` into your root directory
    
2.   Copy the `.estlintrc.json` file into your root directory
    
3.   Ensure your repository has a `package.json` and `package-lock.json` file
    
4.   Changes to make to `.gitlab-ci.yml` file
    

      -   Line 21: change to the appropriate path where your typescript files are located in your repository
    
      -   Line 26: change to the appropriate path where your typescript files are located in your repository
    
      -   Line 27: change to the appropriate path where your `package.json` file is located
    

5.   Changes to make to `package.json` file:
    

      -   In the “scripts” section, add “test”: “mocha” (see the `package.json` in the repo for an example)
    

      -   Change “main” to be your typescript file(s) (see the `package.json` in the repo for an example)
    

6.   Ensure your repository has a directory called `test` with a file called `test.js` using the appropriate format for writing tests using mocha. See link to mocha documentation below.

### Tools Being Used

|Purpose                                  |Tool                           |Documentation                         |
|-----------------------------------------|-------------------------------|-----------------------------|
|Linting and Static Analysis.             |eslint                         |[Eslint Documentation](https://github.com/eslint/eslint)            |
|Dependency Checking                      |dependency-check               |[Dependency Check Documentation](https://github.com/dependency-check-team/dependency-check)|
|Testing                                  |mocha                          |[Mocha Documentation](https://mochajs.org/)                             |

## R Template

### How To Use The Template
1.   Copy the `.gitlab-ci.yml` file into your root directory

2.   Copy the `.ci` directory and its contents into your root directory
    
3.   Changes to make to `.gitlab-ci.yml`
    

      -   Line 24: change `/.R` to the name of the directory in which your R files are stored.

4.   Changes to make to `lintr.R` (in the `.ci` directory)

      -   Line 2: change `/.R` to the name of the directory in which your R files are stored.

      -   Line 3: change `/.R` to the name of the directory in which your R files are stored.

5.   Ensure that your repository has a directory called `tests/testthat` and that you have a file with your tests called `test.R`. Make sure that the tests are written according to testthat documentation (see the link below).

### Tools Being Used

|Purpose                                  |Tool                           |Documentation                         |
|-----------------------------------------|-------------------------------|-----------------------------|
|Linting and Static Analysis.             |lintr                          |[Lintr Documentation](https://github.com/r-lib/lintr)            |
|Linting                                  |styler                         |[Styler Documentation](https://github.com/r-lib/styler)            |
|Dependency Checking                      |oysteR                         |[OysteR Documentation](https://github.com/sonatype-nexus-community/oysteR)|
|Testing                                  |testthat                       |[Test That Documentation](https://testthat.r-lib.org/)                             |

## Docker Template

### How To Use The Template

1.   Copy the `.gitlab-ci.yml` file into your root directory

2.   Changes to make to `.gitlab-ci.yml`

      -   Line 17: change to reflect the location of your Dockerfile

### Tools Being Used

|Purpose                                  |Tool                           |Documentation                         |
|-----------------------------------------|-------------------------------|-----------------------------|
|Linting and Static Analysis              |hadolint                       |[Hadolint Documentation](https://github.com/r-lib/lintr)            |
