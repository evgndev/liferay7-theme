function toggleSearch() {
    var _searchView = jQuery("#searchView");
    console.log('TEST searchView.length', _searchView.length);
    if (_searchView.length) {
        console.log('TEST _searchView.hasClass("active")', _searchView.hasClass("active"));
        _searchView.toggleClass("active")
    }
}

var theme = (function () {
    var me = {},
        _searchView = undefined;

    $(document).ready(function () {
        _searchView = $("#searchView")
    });

    me.toggleSearch = function () {
        console.log('TEST searchView.length', _searchView.length);
        if (_searchView.length) {
            console.log('TEST _searchView.hasClass("active")', _searchView.hasClass("active"));
            _searchView.toggleClass("active")
        }
    };

    return me;
}());