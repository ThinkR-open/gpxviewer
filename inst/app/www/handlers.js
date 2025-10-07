$(document).ready(function () {
	Shiny.addCustomMessageHandler('disableDownloadButton', function (arg) {
		console.log(arg);
		$(arg).addClass('disabled');
	});
	Shiny.addCustomMessageHandler('enableDownloadButton', function (arg) {
		console.log(arg);
		$(arg).removeClass('disabled');
	});
});
