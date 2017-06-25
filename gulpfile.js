var gulp = require('gulp');

var exec = require('sync-exec');
var replace = require('gulp-replace');
var del = require('del');

var dirBack = 'C:\\Users\\benj\\Project web\\2015\\Workspace\\Wiala_1\\war\\';

var devServer = 'http://localhost:8888';
var prodServer = 'http://wiala-1226.appspot.com';

//gulp.task('default',['build'], function() {
gulp.task('default', function() {

	//pub build;
	exec('pub build');

	function rmd(dirr){
		var t= 'rmdir "';
		t = t.concat(dirBack);
		t = t.concat(dirr);
		t = t.concat('" /s /q');
		return t;
	}

	function cop(){
		var t= 'xcopy build\\* "';
		t = t.concat(dirBack);
		t = t.concat('" /e /s /q');
		return t;
	}

//	var tmp = base.concat(web);
	process.stdout.write('\n');

	var r = rmd('web')
	process.stdout.write(r);
	process.stdout.write('\n');
	exec(r);

	r=rmd('lib');
	process.stdout.write(r);
	process.stdout.write('\n');
	exec(r);

	r=cop();
	process.stdout.write(r);
	process.stdout.write('\n');
	exec(r);

 // Remove file on project app engine
 
 // Back to dev value
 // gulp.src(['web/order_el.dart'])
 //   .pipe(replace(prodServer,devServer))
 //   .pipe(gulp.dest('web/'));

});

// execute this task with gulp url
gulp.task('url', function(){
	// Back to dev value
	 gulp.src(['web/order_el.dart'])
	   .pipe(replace(prodServer,devServer))
	   .pipe(gulp.dest('web/'));
});

//gulp.task('build', function(){
//  exec('pub build');
//});