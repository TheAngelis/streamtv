function applySize(){

	var textWidth = document.getElementById('winWidth');
	var size = {
	width: window.innerWidth || document.body.clientWidth,
	height: window.innerHeight || document.body.clientHeight
	};
	var gridSize = size.width;
	var grid = 0;


	switch(true) {
		case gridSize < 768:
			grid = 'XS';
			break;
		case gridSize >= 768 && gridSize < 992:
			grid = 'SM';
			break;
		case gridSize >= 992 && gridSize < 1200:
			grid = 'MD';
			break;
		case gridSize >= 1200:
			grid = 'LG';
			break;
	}


	textWidth.innerHTML = '<b>' + size.width + ' </b>' + 'px' + '</br>' + '<span id="gBig">' + grid + '</span>';
}

window.onload = applySize;
window.onresize = applySize;
