<li component="categories/category" data-cid="{../cid}" data-numRecentReplies="1" class="row clearfix bg-primary">
	<meta itemprop="name" content="{../name}">

	<div class="content col-xs-12 <!-- IF config.hideCategoryLastPost -->col-md-10 col-sm-12<!-- ELSE -->col-md-7 col-sm-9<!-- ENDIF config.hideCategoryLastPost -->">
		<div class="icon pull-left" style="{function.generateCategoryBackground}">
			<i class="fa fa-fw {../icon}"></i>
		</div>

		<h2 class="title">
			<!-- IMPORT partials/categories/link.tpl -->
		</h2>
		<div>
			<!-- IF ../descriptionParsed -->
			<div class="description">
				{../descriptionParsed}
			</div>
			<!-- ENDIF ../descriptionParsed -->
		</div>
		<span class="visible-xs pull-right">
			<!-- IF ../teaser.timestampISO -->
			<a class="permalink" href="{../teaser.url}">
				<small class="timeago" title="{../teaser.timestampISO}"></small>
			</a>
			<!-- ENDIF ../teaser.timestampISO -->
		</span>
	</div>

	<!-- IF !../link -->
	<div class="col-md-1 hidden-sm hidden-xs stats">
		<span>[[global:topics]]</span>
	</div>
	<div class="col-md-1 hidden-sm hidden-xs stats">
		<span>[[global:posts]]</span>
	</div>
	<!-- IF !config.hideCategoryLastPost -->
	<div class="col-md-3 col-sm-3 hidden-xs stats" component="topic/teaser">
		<span>Recent Posts</span>
	</div>
	<!-- ENDIF !config.hideCategoryLastPost -->
	<!-- ENDIF !../link -->
</li>

<!-- IF !config.hideSubCategories -->
<li component="categories/category" data-cid="{../cid}" data-numRecentReplies="1" class="row clearfix bg-primary">
	<meta itemprop="name" content="{../name}">

	{function.generateChildrenCategories}
</li>
<!-- ENDIF !config.hideSubCategories -->
