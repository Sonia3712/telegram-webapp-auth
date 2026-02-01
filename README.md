
## Task 2: Dockerization

The project was successfully containerized using Docker. A Dockerfile was created using Python 3.11 slim base image. Poetry was used to install project dependencies inside the container.

### Build command
docker build --no-cache -t telegram-webapp-auth:f223712 .

### Run command
docker run --rm telegram-webapp-auth:f223712

### Notes
During the build process, the deprecated Poetry option `--no-dev` caused an error. This was resolved by using the updated `--only main` option.



task3

Start SonarQube (Community Edition) in the background:
docker run -d --name sonarqube -p 9000:9000 sonarqube:community
docker ps
Open in browser:http://localhost:9000
Project key	telegram-webapp-auth-f223712
Display name	Telegram WebApp Auth - F223712
telegram-auth-token: sqp_3bf33b0b732520e5b91dab2421c0d23d281a2d49



## Task 4: Code Smell and Quality Analysis

**SonarQube Analysis Results:**

- **Security Rating:** A (0 issues)
- **Reliability Rating:** A (0 issues)
- **Maintainability Rating:** A (0 issues)
- **Test Coverage:** 0.0% (138 lines)
- **Duplications:** 0.0% (380 lines)
- **Security Hotspots:** 0

**Notes:**  
- No critical code smells or issues detected.
- The code is clean and maintainable.
- Test coverage is missing, consider adding Python unit tests for future improvements.



