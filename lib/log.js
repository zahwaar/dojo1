const bunyan = require('bunyan')
const pkg = require('../package.json')
const logger = bunyan.createLogger({ name: pkg.name})

module.exports = () => {
        return logger
    }