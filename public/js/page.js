if (mixpanel !== undefined) {
	var path = document.createElement('a');
	path.href = document.URL;
	mixpanel.track("page " + path.pathname);
}



