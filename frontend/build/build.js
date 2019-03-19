require('./check-versions')()

process.env.NODE_ENV = 'production'

var ora = require('ora')
var rm = require('rimraf')
var path = require('path')
var chalk = require('chalk')
var webpack = require('webpack')
var config = require('../config')
var webpackConfig = require('./webpack.prod.conf')
var critical = require('critical');

var spinner = ora('building for production...')
spinner.start()

rm(path.join(config.build.assetsRoot, config.build.assetsSubDirectory), err => {
  if (err) throw err
  webpack(webpackConfig, function (err, stats) {
    spinner.stop()
    if (err) throw err
    process.stdout.write(stats.toString({
      colors: true,
      modules: false,
      children: false,
      chunks: false,
      chunkModules: false
    }) + '\n\n')

    critical.generate({
      inline: true,
      minify: true,
      ignore: ['@font-face',/url\(/,/font-family/],
      base: path.resolve(__dirname, '../dist'),
      src: 'index.html',
      dest: 'index.html',
      width: 1920,
      height: 1080
    })

    critical.generate({
      inline: true,
      minify:true,
      ignore: ['@font-face',/url\(/,/font-family/],
      base: path.resolve(__dirname, '../dist'),
      src: 'portfolio.html',
      dest: 'portfolio.html',
      width: 1920,
      height: 1080
    })

    console.log(chalk.cyan('  Build complete.\n'))
    console.log(chalk.yellow(
      '  Tip: built files are meant to be served over an HTTP server.\n' +
      '  Opening index.html over file:// won\'t work.\n'
    ))
  })
})
