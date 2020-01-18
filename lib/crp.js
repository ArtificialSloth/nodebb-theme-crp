"use strict";

var crp = {};
var helpers = require.main.require('./src/routes/helpers.js');

crp.init = function(params, callback) {
	var app = params.router, middleware = params.middleware, controllers = params.controllers;
	var middlewares = [middleware.canViewGroups];

	helpers.setupPageRoute(app, '/chapters', middleware, middlewares, controllers.groups.list);
	helpers.setupPageRoute(app, '/chapters/:slug', middleware, middlewares, controllers.groups.details);
	helpers.setupPageRoute(app, '/chapters/:slug/members', middleware, middlewares, controllers.groups.members);

	callback(null, params);
};

crp.defineWidgetAreas = function(areas, callback) {
	areas = areas.concat([
		{
			'name': 'MOTD',
			'template': 'home.tpl',
			'location': 'motd'
		},
		{
			'name': 'Homepage Footer',
			'template': 'home.tpl',
			'location': 'footer'
		},
		{
			'name': 'Category Sidebar',
			'template': 'category.tpl',
			'location': 'sidebar'
		},
		{
			'name': 'Topic Footer',
			'template': 'topic.tpl',
			'location': 'footer'
		}
	]);

	callback(null, areas);
};

module.exports = crp;
