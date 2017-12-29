node() {
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
