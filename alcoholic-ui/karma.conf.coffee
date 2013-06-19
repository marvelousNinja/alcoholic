# Karma configuration
# Generated on Wed Jun 19 2013 17:35:51 GMT+0300 (FET)

# base path, that will be used to resolve files and exclude
basePath = ''

# list of files / patterns to load in the browser
files = [
  JASMINE
  JASMINE_ADAPTER
  'assets/javascripts/vendor/jquery.js'
  'assets/javascripts/vendor/angular.js'
  'assets/javascripts/vendor/angular-resource.js'
  'assets/javascripts/vendor/angular-ui-router.js'
  'assets/javascripts/vendor/angular-mocks.js'
  'assets/javascripts/app/**/*.coffee'
  'spec/javascripts/lib/*.js'
  'spec/javascripts/**/*.coffee'
  {
    pattern: 'spec/javascripts/fixtures/**/*.json'
    watched: true
    included: false
    served: true
  }
]

# list of files to exclude
exclude = []

# test results reporter to use
# possible values: 'dots', 'progress', 'junit'
reporters = ['progress']

# web server port
port = 9876

# cli runner port
runnerPort = 9100

# enable / disable colors in the output (reporters and logs)
colors = true

# level of logging
# possible values: LOG_DISABLE || LOG_ERROR || LOG_WARN || LOG_INFO || LOG_DEBUG
logLevel = LOG_INFO

# enable / disable watching file and executing tests whenever any file changes
autoWatch = true

# Start these browsers, currently available:
# - Chrome
# - ChromeCanary
# - Firefox
# - Opera
# - Safari (only Mac)
# - PhantomJS
# - IE (only Windows)
browsers = ['Firefox']

# If browser does not capture in given timeout [ms], kill it
captureTimeout = 60000

# Continuous Integration mode
# if true, it capture browsers, run tests and exit
singleRun = false
