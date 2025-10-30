pipeline {
    agent any

    environment {
        // SQL Server connection info
        DB_SERVER = "localhost.localdomain"
      // DB_USER = "sa"
       // DB_PASS = "Mnbv*7894"

        // Path to sqlcmd (adjust if needed)
        SQLCMD = "/opt/mssql-tools18/bin/sqlcmd"
    }

    stages {
        stage('Checkout') {
            steps {
                echo "Checking out source code..."
                git branch: 'main', url: 'https://github.com/snagendradba77/JenkinsSQL.git'
            }
        }

        stage('Validate SQL Scripts') {
            steps {
                echo "Listing SQL scripts..."
                sh 'ls -l sql/*.sql || echo "No SQL scripts found!"'
            }
        }

        stage('Run SQL Scripts') {
            steps {
                echo "Running SQL scripts on ${DB_SERVER}..."
                 // Bind credentials to environment variables
                withCredentials([usernamePassword(credentialsId: 'sql-sa', usernameVariable: 'DB_USER', passwordVariable: 'DB_PASS')]) {
                sh '''
                for file in sql/*.sql; do
                    echo "Executing $file ..."
                    ${SQLCMD} -S ${DB_SERVER} -U ${DB_USER} -P "${DB_PASS}" -C -i "$file"
                done
                '''
            }
        }
    }
}
    post {
        success {
            echo "✅ SQL deployment successful!"
        }
        failure {
            echo "❌ SQL deployment failed! Check logs."
        }
    }
}

