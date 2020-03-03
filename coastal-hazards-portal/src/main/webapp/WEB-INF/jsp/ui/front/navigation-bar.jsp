<%-- Logo --%>
<a href="https://www.usgs.gov" target="_blank" id="app-navbar-coop-logo-img-container" class="app-navbar-item-container">
    <img id="app-navbar-coop-logo-img" alt="USGS Logo" src="${param['baseUrl']}/images/banner/usgslogo.png" />
</a>

<%-- Application Title --%>

<div id="app-navbar-site-title-container" class="app-navbar-item-container">
    <a href="${param['baseUrl']}">
	<div class="app-navbar-title visible-lg hidden-md hidden-sm hidden-xs">Coastal Change Hazards Portal</div>
    </a>
    <a href="${param['baseUrl']}">
	<div class="app-navbar-title hidden-lg visible-md hidden-sm hidden-xs">Coastal Change Hazards</div>
    </a>
    <a href="${param['baseUrl']}">
        <div class="app-navbar-title hidden-lg hidden-md visible-sm hidden-xs">Coastal Change Hazards</div>
    </a>
    <a href="${param['baseUrl']}">
        <div class="app-navbar-title hidden-lg hidden-md hidden-sm visible-xs">CCH&nbsp;</div>
    </a>
</div>

<%-- Combination Search Bar --%>
<jsp:include page="combined-searchbar.jsp"></jsp:include>

<%-- Bucket Control --%>
<jsp:include page="navbar-bucket.jsp">
	<jsp:param name="baseUrl" value="${param['baseUrl']}" />
</jsp:include>

<%-- Help Button --%>
<div class='app-navbar-item-container' title="More Info For USGS Coastal Change Hazards Portal">
    <span id='app-navbar-help-container'>
        <a href="${param['baseUrl']}/info/"><i class="fa fa-question-circle"></i></a>
    </span>
</div>

<%-- This modal window appears when a user selects to share their session. It includes the 
    url for their current view (calculated on the fly) and a tweet button --%>
<div id="modal-content-share" class="modal fade" tabindex ="-1" role="dialog" aria-labelledby="modal-label" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" aria-hidden="true" data-dismiss="modal" type="button"><i class="fa fa-times"></i></button>
                <h4 id="modal-label">Share Your Coastal Change Hazards Portal View With Others</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="well well-small catering">
                        <label for="modal-share-summary-url-inputbox">
							<span id="modal-share-summary-url-inputbox-div">
								<input id="modal-share-summary-url-inputbox" type='text' autofocus readonly size="20" placeholder="Loading..." title="modal-share-summary-url-inputbox"/>
							</span>
						</label>
                        <a id="modal-share-summary-url-button" class="btn btn-default" target="portal_view_window" role="button">View In Portal</a>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
				<span class="pull-right" id='multi-card-twitter-button'></span>
                <img id="multi-card-twitter-load-img" src="${param['baseUrl']}/images/spinner/spinner2.gif" alt="loading twitter"/>
                <a href="#" class="btn btn-default shareclosebutton"  data-dismiss="modal" aria-hidden="true">Close</a>
            </div>
        </div>
    </div>
</div>
