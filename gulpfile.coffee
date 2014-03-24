gulp        = require 'gulp'
gutil       = require 'gulp-util'
stylus      = require 'gulp-stylus'
path        = require 'path'
watch       = require 'gulp-watch'
connect     = require 'gulp-connect'
browserify  = require 'gulp-browserify'
rename      = require 'gulp-rename'
handlebars  = require 'gulp-ember-handlebars'
concat      = require 'gulp-concat'

gulp.task 'connect', connect.server
  root: ['dist']
  port: 1337
  livereload: true
  # open:
  #   browser: 'Google Chrome'

gulp.task 'scripts', ->
  gulp.src('./src/js/app.coffee',{read: false})
    .pipe(browserify(
      insertGlobals: true
      extensions: [".coffee"]
      debug: !gulp.env.production
    ))
    .on("error", gutil.log)
    .on("error", gutil.beep)
    .pipe(rename('app.js'))
    .pipe(gulp.dest './dist/js/')
    .pipe(connect.reload())

gulp.task "templates", ->
  gulp.src(["./src/js/templates/**/*.hbs"])
    .pipe(
        handlebars(
          outputType: "browser"
        )
      )
    .pipe(concat("templates.js"))
    .pipe(gulp.dest("./dist/js/"))
    .pipe(connect.reload())
    



# gulp.task 'stylus', ->
#   gulp.src './src/css/*.styl'
#     .pipe(watch())
#     .pipe(stylus())
#     .pipe(
#       gulp.dest './dist/css'
#     )
#     .pipe(connect.reload())

gulp.task 'copy', ->
  gulp.src './src/index.html'
    .pipe(watch())
    .pipe(gulp.dest './dist/')
    .pipe(connect.reload())

gulp.task 'watch', ->
  gulp.watch("./src/js/**/*.coffee", ['scripts'])
  gulp.watch("./src/js/templates/**/*.hbs", ['templates'])  

gulp.task 'default', ['connect','scripts','templates','copy','watch']
