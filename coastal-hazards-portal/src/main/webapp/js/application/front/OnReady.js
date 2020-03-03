/*jslint browser: true*/
/*jslint plusplus: true */
/*global $*/
/*global initializeLogging*/
/*global CCH*/
/*global LOG*/
/*global console*/
$(document).ready(function () {
	"use strict";
	try {
		initializeLogging({
			LOG4JS_LOG_THRESHOLD: CCH.CONFIG.development ? 'debug' : 'info'
		});
		CCH.LOG = LOG;

		// For any ajax call going out, change the mouse pointer to a wait cursors, change it back on ajax stop/error
		$(document).ajaxStart(function () {
			$('body').css('cursor', 'wait');
		});
		$(document).ajaxStop(function () {
			$('body').css('cursor', 'default');
		});
		$(document).ajaxError(function () {
			$('body').css('cursor', 'default');
		});

		CCH.session = new CCH.Objects.Session();

		CCH.map = new CCH.Objects.Front.Map({
			mapDiv: 'map'
		}).init();

		CCH.ows = new CCH.Util.OWS().init();

		CCH.items = new CCH.Objects.Items();

		CCH.ui = CCH.Objects.Front.UI({
			applicationOverlayId: 'application-overlay',
			headerRowId: 'header-row',
			footerRowId: 'footer-row',
			contentRowId: 'content-row',
			mapdivId: 'map',
			slideContainerDivId: 'application-slide-items-content-container',
			shareModalId: 'modal-content-share',
			shareUrlButtonId: 'modal-share-summary-url-button',
			shareInputId: 'modal-share-summary-url-inputbox',
			shareLoadingId: 'multi-card-twitter-load-img',
			shareTwitterBtnId: 'multi-card-twitter-button',
			helpModalId: 'helpModal',
			helpModalBodyId: 'help-modal-body',
			slideItemsContainerId: 'application-slide-items-container',
			slideBucketContainerId: 'application-slide-bucket-container',
			slideSearchContainerId: 'application-slide-search-container',
			combinedSearch: new CCH.Objects.Widget.CombinedSearch(),
			accordion: new CCH.Objects.Widget.Accordion({
				containerId: 'application-slide-items-content-container'
			})
		});

		// Begin loading items 
		CCH.CONFIG.onAppInitialize();
	} catch (err) {
		CCH.splashUpdate("There was a problem loading the page. Please try to reload or <a href='mailto:CCH_Help@usgs.gov?subject=Page%20Load%20Error&body=Error:%20" + err.stack + "%0D%0A%0D%0ADescribe%20what%20you%20were%20doing%20when%20this%20error%20occcurred:%20'>contact us</a>");
		$('.splash-spinner').fadeOut();
		console.log(err.stack);
	}

});
