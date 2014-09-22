if (mixpanel !== undefined) {
	var path = document.createElement('a');
	path.href = document.URL;
	mixpanel.track("page " + path.pathname);

	$(document).ready(function() {
		$('a').click(function (event) {
			var link = $(this);
			mixpanel.track("link " + link.href);
		});
	});
}



