var theme = (function () {
    var me = {},
        _searchView = undefined,
        _searchBtn = undefined,
        _$languageDropdown = undefined;

    me.toggleSearch = function () {
        _searchView = $("#searchView");
        _searchBtn = $("#searchBtn");
        if (_searchView.length) {
            _searchView.toggleClass("active");
            _searchBtn.toggleClass("active");
        }
    };

    function _createLangDiv($lang) {
        var langLabel = $lang.find("svg").attr("message");
        langLabel = langLabel.replace("[Beta]", "");
        var $langLink = $lang.clone().append("&nbsp;").append(langLabel);
        return $("<div>").append($langLink);
    }

    me.showLanguageDropdown = function () {
        try {
            var $languagesDiv = $(".languages");

            if (!_$languageDropdown || !_$languageDropdown.length) {
                _$languageDropdown = $languagesDiv.find(".languageDropdown ");
                var $activeLanguage = $languagesDiv.find(".portlet-body > span.current-language");
                var $notActiveLanguages = $languagesDiv.find(".portlet-body > a");
                _$languageDropdown.append(_createLangDiv($activeLanguage));

                $notActiveLanguages.each(function () {
                    var $lang = $(this);
                    var $langDiv = _createLangDiv($lang);
                    _$languageDropdown.append($langDiv);
                });
            }

            if (!_$languageDropdown.is(":visible")) {
                _$languageDropdown.show();
            } else {
                _$languageDropdown.hide();
            }
        } catch (e) {
            console.error('Cannot render languages', e);
        }
    };

    return me;
}());