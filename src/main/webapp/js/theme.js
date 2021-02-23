var theme = (function () {
    var me = {},
        _searchView = undefined,
        _searchBtn = undefined,
        _$languageDropdown = undefined,
        _$languagesDiv = undefined;

    $(document).ready(function() {
        console.log( "ready!" );
        _$languagesDiv = $(".languages")
        _$languagesDiv.find('button.dropdown-toggle').click(function (e) {
            me.showLanguageDropdown();
        });
    });


    me.toggleSearch = function () {
        _searchView = $("#searchView");
        _searchBtn = $("#searchBtn");
        if (_searchView.length) {
            _searchView.toggleClass("active");
            _searchBtn.toggleClass("active");
        }
    };

    function _createLangDiv($lang) {
        let labelSpan = $lang.find("span.taglib-text-icon");
        var langLabel = labelSpan.text().split("-")[0];
        labelSpan.text(langLabel);
        console.log('TEST langLabel', langLabel);
        var $langLink = $lang.clone();
        return $("<div>").append($langLink);
    }

    me.showLanguageDropdown = function () {
        try {
            if (!_$languageDropdown || !_$languageDropdown.length) {
                _$languageDropdown = _$languagesDiv.find(".languageDropdown ");
                var $notActiveLanguages = $("a[href*='/c/portal/update_language']");
                    // = $("a[id^='_com_liferay_site_navigation_language_web_portlet_SiteNavigationLanguagePortlet']")
                    //     .find("a[href^='/c/portal/update_language']");
                $notActiveLanguages.each(function () {
                    var $lang = $(this);
                    var $langDiv = _createLangDiv($lang);
                    _$languageDropdown.append($langDiv);
                });
            }

            console.log('TEST _$languageDropdown', _$languageDropdown);
            if (!_$languageDropdown.is(":visible")) {
                _$languageDropdown.show();
                console.log('TEST not visible, show');
            } else {
                _$languageDropdown.hide();
                console.log('TEST is visible, hide');
            }
        } catch (e) {
            console.error('Cannot render languages', e);
        }
    };

    return me;
}());