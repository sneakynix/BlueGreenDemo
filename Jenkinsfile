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
  stage('Uploading to repo') {
      sh(
        script: '''
        /usr/local/bin/deb-s3 upload --bucket spinnaker-jenkins-poc-debrepo --arch all --codename trusty --preserve-versions true *.deb
        '''
      )
  }
  stage ('Archive build output') {
    
    // Archive the build output artifacts.
    archiveArtifacts(
      artifacts: '**/*.rpm'
      )
  }
}
