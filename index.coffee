'use strict'
through = require 'through2'
{PluginError} = require 'gulp-util'
rho = require 'rho'

createPluginError = (message) ->
    new PluginError 'gulp-rho', message

gulpRho = () ->

    through.obj (file, enc, done) ->
        # `file` is a vinyl object,
        # see https://npmjs.org/package/vinyl

        # pass along empty files
        if file.isNull()
            @push file
            return done()

        # as long as we do not support streams
        # we have to let 'em now
        if file.isStream()
            @emit 'error', createPluginError(
                'stream content is not supported'
            )
            return done()

        # this is where the magic happens
        input = file.contents.toString()
        rho.render input, (err, html) =>
          if err
            @emit 'error', createPluginError(err)
            return
          file.contents = new Buffer html
          file.path = file.path.replace /\.rho$/, '.html'
          @push file
          done()

module.exports = gulpRho
