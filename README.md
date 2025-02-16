# Struts 1 Legacy Application Setup Guide  
**College Assignment | PCCOE 2025**  
*For Educational/Historical Purposes Only*  

---  

## 🌟 Beginner-Friendly Setup Guide  
*Tested on Windows 11 with JDK 8 + Tomcat 9 + Eclipse*  

---  

## 📋 Table of Contents
1. [Prerequisites](#prerequisites)
2. [Step 1: Install JDK 8](#step-1-install-jdk-8)
3. [Step 2: Install Tomcat 9](#step-2-install-tomcat-9)
4. [Step 3: Install Eclipse IDE](#step-3-install-eclipse-ide)
5. [Step 4: Configure the Project](#step-4-configure-the-project)
6. [Step 5: Run the Application](#step-5-run-the-application)
7. [Troubleshooting](#troubleshooting)

---  

## 📥 Prerequisites {#prerequisites}  
Download these first:  

| Component             | Download Link                                                                 |
|-----------------------|-------------------------------------------------------------------------------|
| **JDK 8**             | [Google Drive](https://drive.google.com/drive/folders/1fIcgUiABRLEQqD0TuksWWXvhzATB2bNG?usp=sharing) |
| **Tomcat 9**          | [Google Drive](https://drive.google.com/drive/folders/1TkM2OrSfyg0IDYiCp4jmrwVd6Z_seJ35?usp=sharing) |
| **Eclipse IDE**       | [Google Drive](https://drive.google.com/drive/folders/1mkbcdwyxIFye7agYczZ80qD10ErN_axZ?usp=sharing) |
| **Struts 1.3.10 JARs** | [Google Drive](https://drive.google.com/drive/folders/1zj3ssoR-xxJ7MhjzFhE-NFbCDbOAm2qZ?usp=sharing)       |

---  

## 🛠️ Step 1: Install JDK 8 {#step-1-install-jdk-8}
**Why**: Struts 1 works best with Java 8  

1. Run `jdk-8u202-windows-x64.exe`  
2. Set **JAVA_HOME**:  
   - **Variable name**: `JAVA_HOME`  
   - **Variable value**: `C:\Program Files\Java\jdk1.8.0_202`
3. Add Java to **PATH**:  
   - `%JAVA_HOME%\bin`
4. Verify installation:  
   ```bash
   java -version  # Should show "1.8.0_202"

---

## 🐱 Step 2: Install Tomcat 9  
**Why**: Tomcat 10+ uses Jakarta EE (incompatible with Struts 1)

1. Extract `apache-tomcat-9.0.99.zip` to:  
2. Set environment variables:  
- **Variable name**: 'CATALINA_HOME'  
- **Variable value**: 'C:\tomcat9'
3. Add to PATH:  
- '%CATALINA_HOME%\bin'
4. Test installation:  
'''bash
startup.bat  # Starts Tomcat server

---

## 🌌 Step 3: Install Eclipse IDE
1. Extract `eclipse-jee-2021-06-win32-x86_64.zip` to your preferred location.  
2. First launch setup:  
   - Select workspace: `C:\struts1-workspace`  
   - Switch to Java EE perspective 

---

## 📂 Step 4: Configure the Project  

### Part A: Import Project  
- In Eclipse:  
  1. Navigate to `File > Import > Existing Projects into Workspace`  
  2. Select project folder:  
     - Browse to the `struts1-app` directory  
     - Check **"Copy projects into workspace"**

### Part B: Add Struts Libraries  
1. Copy the Struts JAR files to:  
   - `YourProject/WebContent/WEB-INF/lib`  
2. Configure build path:  
   - Right-click the project > **Build Path > Add JARs**  
   - Select all JARs from `WEB-INF/lib`

### Part C: Configure Tomcat Server  
1. Add server runtime:  
   - Navigate to `Window > Preferences > Server > Add Tomcat v9.0`  
   - Set the installation directory to: `C:\tomcat9`  

---

## 🚀 Step 5: Run the Application  

1. **Deploy the project:**  
   - Right-click the project > **Run As > Run on Server**

2. **Access the application at:**  
   - [http://localhost:8080/struts1-app/login.jsp](http://localhost:8080/struts1-app/login.jsp)

3. **Test credentials:**  
   - **Username:** `admin`  
   - **Password:** `secret`

---

## 🔧 Troubleshooting

| Issue                  | Solution                                             |
|------------------------|------------------------------------------------------|
| ClassNotFoundException | Ensure all Struts JARs are in `WEB-INF/lib`          |
| HTTP 404 Error         | Verify `login.jsp` exists in the `WebContent` folder |
| Version Mismatch       | Set Java compiler compliance level to 1.8            |
