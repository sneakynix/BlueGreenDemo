node() {
  // Wipe the workspace so we are building completely clean
  deleteDir()
  checkout scm
  stage('Building the application') {
    sh(
      script: '''
        ./build.sh
      '''
    )
  }
  stage('Performing tests') {
      sh(
        script: '''
        ./tests.sh
        '''
      )
  }
}
