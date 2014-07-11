# gulp-rho [![NPM version][npm-image]][npm-url]
[![Build Status][travis-image]][travis-url] [![Coverage Status][coveralls-image]][coveralls-url] [![Dependency Status][depstat-image]][depstat-url] [![devDependency Status][devdepstat-image]][devdepstat-url]


> Rho plugin for [gulp](http://gulpjs.com/) 3.

## Usage

First, install `gulp-rho` as a development dependency:

```shell
npm install --save-dev gulp-rho
```

Then, add it to your `gulpfile.js`:

```javascript
var gulp = require('gulp');
var rho = require('gulp-rho');

gulp.task('default', function () {
    gulp.src('./src/*.ext')
        .pipe(rho({msg: 'More Coffee!'}))
        .pipe(gulp.dest("./dist"));
});
```

## Options `rho(opt)`

## opt.msg
Type: `String`
Default: `More Coffee!`

The message you wish to attach to file.


## License

[MIT License](http://en.wikipedia.org/wiki/MIT_License) © [Ryan Muller](ryan.muller.io)

[npm-url]: https://npmjs.org/package/gulp-rho
[npm-image]: https://badge.fury.io/js/gulp-rho.png

[travis-url]: http://travis-ci.org/ryanthejuggler/gulp-rho
[travis-image]: https://secure.travis-ci.org/ryanthejuggler/gulp-rho.png?branch=master

[coveralls-url]: https://coveralls.io/r/ryanthejuggler/gulp-rho
[coveralls-image]: https://coveralls.io/repos/ryanthejuggler/gulp-rho/badge.png

[depstat-url]: https://david-dm.org/ryanthejuggler/gulp-rho
[depstat-image]: https://david-dm.org/ryanthejuggler/gulp-rho.png

[devdepstat-url]: https://david-dm.org/ryanthejuggler/gulp-rho#info=devDependencies
[devdepstat-image]: https://david-dm.org/ryanthejuggler/gulp-rho/dev-status.png
