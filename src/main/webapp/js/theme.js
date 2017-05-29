var theme = (function () {
    var me = {},
        _searchView = undefined,
        _searchBtn = undefined;
  
    me.toggleSearch = function () {
        _searchView = $("#searchView");
        _searchBtn = $("#searchBtn");
        if (_searchView.length) {
            _searchView.toggleClass("active");
            _searchBtn.toggleClass("active");
        }
    };

    return me;
}());