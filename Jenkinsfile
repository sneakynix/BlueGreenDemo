pipeline
{
  agent any
node() {
  // Wipe the workspace so we are building completely clean
  deleteDir()
  checkout scm
  stage('Building the application') {
    echo 'Executing script'
    sh(
      script: '''
        ./build.sh
      '''
    )
  }
  stage('Performing tests') {
      echo 'Executing tests'
      sh(
        script: '''
        ./tests.sh
        '''
      )
  }
}
}
