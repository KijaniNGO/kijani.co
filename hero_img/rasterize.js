var page = require('webpage').create(),
	system = require('system'),
	address, output;

if (system.args.length != 3 ) {
	console.log('Wrong number of arguments!');
	console.log('Usage: rasterize.js URL filename');
	phantom.exit(1);
} else {
	address = system.args[1];
	output = system.args[2];
	page.viewportSize = { width: 1, height: 1 };
	if (system.args.length > 4) {
		page.zoomFactor = system.args[4];
	}
	page.open(address, function (status) {
		if (status !== 'success') {
			console.log('Unable to load the address!');
			phantom.exit(1);
		} else {
			window.setTimeout(function () {
				page.render(output, {quality: '80'});
				phantom.exit();
			}, 200);
		}
	});
}