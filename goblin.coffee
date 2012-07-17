fs = require 'fs'
winston = require 'winston'
argv = require('optimist')
  .usage('Usage: $0 -c')
  .demand('c')
  .alias('c', 'create')
  .describe('c', 'Create directory structure for your project')
  .argv

logger = new (winston.Logger) (
  transports: [
    new (winston.transports.Console)()
    new (winston.transports.File)(
      filename: 'log.log'
      )
  ]
  )

if argv.create
  mode = 0o777
  fs.mkdirSync 'app', mode
  fs.mkdirSync 'app/controllers', mode
  fs.mkdirSync 'app/models', mode
  fs.mkdirSync 'app/views', mode
  fs.mkdirSync 'app/views/layouts', mode
  fs.mkdirSync 'app/client', mode
  fs.mkdirSync 'app/client/controllers', mode
  fs.mkdirSync 'app/client/models', mode
  fs.mkdirSync 'app/client/views', mode
  fs.mkdirSync 'app/helpers', mode
  fs.mkdirSync 'app/mailers', mode

  fs.mkdirSync 'public', mode
  fs.mkdirSync 'public/images', mode
  fs.mkdirSync 'public/javascripts', mode
  fs.mkdirSync 'public/stylesheets', mode

  fs.mkdirSync 'config', mode
  fs.mkdirSync 'config/environments', mode
  fs.mkdirSync 'config/initializers', mode
  fs.mkdirSync 'config/locale', mode

  fs.mkdirSync 'test', mode

  fs.mkdirSync 'spec', mode
  fs.mkdirSync 'spec/acceptance', mode
  fs.mkdirSync 'spec/models', mode

  fs.mkdirSync 'vendor', mode
  fs.mkdirSync 'vendor/javascripts', mode
  fs.mkdirSync 'vendor/stylesheets', mode

  fs.mkdirSync 'lib', mode
else
  logger.log 'info', 'Goblin says: Hi'