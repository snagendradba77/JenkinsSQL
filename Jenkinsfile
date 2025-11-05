pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/snagendradba77/JenkinsSQL.git'
            }
        }

        stage('Build') {
            steps {
                sh 'echo Building project...'
            }
        }

        stage('Database Migration') {
            steps {
                sh '''
                echo "Running Flyway migrations..."
                flyway -configFiles=flyway.conf migrate
                '''
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully.'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}

