<nav class="${nav_css_class}" id="navigation" role="navigation">
	<h1 class="hide-accessible"><@liferay.language key="navigation" /></h1>

	<ul aria-label="<@liferay.language key="site-pages" />" role="menubar">
		<#list nav_items as nav_item>
			<#assign
				nav_item_attr_has_popup = ""
				nav_item_attr_selected = ""
				nav_item_css_class = ""
				nav_item_layout = nav_item.getLayout()
			/>

			<#if nav_item.isSelected()>
				<#assign
					nav_item_attr_has_popup = "aria-haspopup='true'"
					nav_item_attr_selected = "aria-selected='true'"
					nav_item_css_class = "selected"
				/>
			</#if>

			<li ${nav_item_attr_selected} class="${nav_item_css_class}" id="layout_${nav_item.getLayoutId()}" role="presentation">
				<a aria-labelledby="layout_${nav_item.getLayoutId()}" ${nav_item_attr_has_popup} href="${nav_item.getURL()}" ${nav_item.getTarget()} role="menuitem"><span><@liferay_theme["layout-icon"] layout=nav_item_layout /> ${nav_item.getName()}</span></a>

				<#if nav_item.hasChildren()>
					<ul class="child-menu" role="menu">
						<#list nav_item.getChildren() as nav_child>
							<#assign
								nav_child_attr_selected = ""
								nav_child_css_class = ""
							/>

							<#if nav_item.isSelected()>
								<#assign
									nav_child_attr_selected = "aria-selected='true'"
									nav_child_css_class = "selected"
								/>
							</#if>

							<li ${nav_child_attr_selected}
									class="${nav_child_css_class}"
									id="layout_${nav_child.getLayoutId()}"
									role="presentation"
							>
								<a aria-labelledby="layout_${nav_child.getLayoutId()}"
								   href="${nav_child.getURL()}"
								   role="menuitem"
								${nav_child.getTarget()}>
									${nav_child.getName()}
								</a>
							</li>
						</#list>
					</ul>
				</#if>
			</li>
		</#list>
		<li class="writeUsOnNav">
			<#--<button data-target="#questionFormModal" data-toggle="modal">-->
			<button onclick="showQuestionFormModal();">
			<@liferay.language key="theme.writeUsButton" />
			</button>
		</li>
	</ul>
    <div class="searchView" id="searchView">
		<div class="searchField">
			<@liferay.search/>
		</div>
    </div>
    <button class="searchBtn" id="searchBtn" onClick="theme.toggleSearch()">
        <img src="/o/liferay7-theme/images/russiaeasy/search.png" alt="search">
    </button>
</nav>