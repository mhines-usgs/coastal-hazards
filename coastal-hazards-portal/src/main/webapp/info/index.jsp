<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="org.apache.commons.lang.StringUtils"%>
<%@page import="gov.usgs.cida.config.DynamicReadOnlyProperties"%>
<%@page import="java.util.Map" %>

<%!
	protected DynamicReadOnlyProperties props = new DynamicReadOnlyProperties();

	{
		try {
			props = props.addJNDIContexts(new String[0]);
		} catch (Exception e) {
			System.out.println("Could not find JNDI - Application will probably not function correctly");
		}
	}
%>
<%
	String baseUrl = StringUtils.isNotBlank(request.getContextPath()) ? request.getContextPath() : props.getProperty("coastal-hazards.base.url");

	// Figure out the path based on the ID passed in, if any
	Map<String, String> attributeMap = (Map<String, String>) pageContext.findAttribute("it");
	String path = "../";
	String metaTags = path + "WEB-INF/jsp/components/common/meta-tags.jsp";
%>
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="<%=metaTags%>">
			<jsp:param name="relPath" value="../" />
		</jsp:include>
		<link type="text/css" rel="stylesheet" href="<%=baseUrl%>/css/info/info.css" />
		<title>Coastal Change Hazards Information</title>
	</head>
	<body>

		<div id=“wrapper”>

			<header>
				<a href="#"><img src="../images/info/collaborative_logo.png" alt="collaborative logo" /></a>
				<h1>USGS Coastal Change Hazards Portal</h1>
				<h1 class="mobile">USGS CCH</h1>
				<h1 class="mobile_portrait">CCH</h1>
			</header>
			<div id="content">
				<div id="title">
					<a href="<%=baseUrl%>">
						<div id="close">
							<p>Back to Portal</p>
						</div>
					</a>
				</div>
				<div id="text">
					<p class="descriptive-text">
						Welcome to the U.S. Geological Survey's Coastal Change Hazards (CCH) portal, 
						where you have interactive access to coastal change science and data for our 
						Nation’s coasts. The CCH portal is a collaborative project between USGS 
						Coastal and Marine Geology Program (CMGP) scientists and informatics 
						specialists and software engineers at the USGS Center for Integrated Data Analytics (CIDA).
					</p>
					<p class="descriptive-text">
						This page provides background on the portal, and a summary of how to use its 
						basic functions. We encourage you to explore and learn. If you see changes needed 
						or have ideas for improving the access and use of this USGS data and information, 
						please email <a href="mailto:cch_help@usgs.gov">cch_help@usgs.gov.</a>
					</p>
					<span class="header">
						Background
					</span>
					<p class="descriptive-text">
						Our Nation’s coastlines are constantly changing landscapes that pose unique 
						management challenges. Robust scientific findings help identify areas that are most 
						vulnerable to diverse coastal change hazards including beach and dune erosion, 
						long-term shoreline change, and sea-level rise. The data, models, and tools available 
						through the CCH portal can be used by federal and state agencies, non-governmental 
						organizations, municipal entities, and private citizens. Here are some examples:
					</p>
					<ul>
						<li>
							Coastal hazards information is used by planners and emergency managers 
							as they work to protect resources, reduce risk, and prevent economic losses. 
							Storm, shoreline change, and sea-level rise vulnerability assessments can 
							improve understanding of the diversity and nature of specific coastal hazards. 
							Our updated assessments describe how vulnerability has changed over time 
							and inform plans for the future. This information can be viewed, downloaded, 
							and shared. Web data services provided through the CCH portal allow USGS 
							data to be incorporated into custom applications by other agencies, organizations, 
							and private industry.
						</li>
						<li>
							Coastal residents can visualize hazards in their area, download or print 
							information, and share information with others through social media.
						</li>
						<li>
							Emergency first-responders can access the most current, near-real-time 
							updates of storm impact probabilities (collision, overwash, inundation), so 
							they have current information in order to direct appropriate staging of 
							response personnel and equipment.
						</li>
					</ul>
					<p class="descriptive-text">
						The products provided through the CCH portal fulfill critical immediate and ongoing 
						needs for scientifically credible and actionable information to increase resilience to 
						storms and climate change. This information can support land use planning, 
						infrastructure, ecosystem and cultural resource management decisions, as well as 
						storm response and recovery. The explicit goal of the project is to enable users to 
						apply and integrate the data and tools to address their specific needs.
					</p>
					<span class="header">
						Portal Functionality
					</span>
					<p class="descriptive-text">
						The Coastal Change Hazards portal organizes products and information into discrete 
						items within three specific coastal hazard themes: 1) severe storms, 2) shoreline 
						change, and 3) sea-level rise. Each data item represents an individual research 
						product. Items with a common topic area are grouped into aggregations within a 
						theme, to show the breadth of that topic and make it easy to explore related i
						nformation. Items and aggregations can be added to a bucket that saves this 
						information for download or sharing
					</p>
					<table id="application-icon-table">
						<thead>
							<tr>
								<th>Icon</th>
								<th>Description</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><img src="../images/info/info-page-icon.png" alt="Info Page Icon"/></td>
								<td>Learn about the portal, its background and basic functions.</td>
							</tr>
							<tr>
								<td><img src="../images/info/info-page-bucket.png" alt="Bucket Icon"/></td>
								<td>
									Put items of interest into the bucket. From here, download data 
									and products or share contents with friends and colleagues.
								</td>
							</tr>
							<tr>
								<td>
									<img src="../images/info/info-page-more-info-link.png" alt="More Info Link Icon"/>
								</td>
								<td>Find out more information about the item.</td>
							</tr>
							<tr>
								<td>
									<img src="../images/info/info-page-zoomto-link.png" alt="Zoom To Link Icon"/>
								</td>
								<td>Zoom to the spatial extent of the item being viewed.</td>
							</tr>
							<tr>
								<td>
									<img src="../images/info/info-page-explore-contents.png" alt="Explore Contents Link Icon"/>
								</td>
								<td>Explore additional data sets and products within this item.</td>
							</tr>
							<tr>
								<td>
									<img src="../images/info/info-page-add-to-bucket.png" alt="Add To Bucket Link Icon"/>
								</td>
								<td>Add items to the bucket.</td>
							</tr>
							<tr>
								<td>
									<img src="../images/info/info-page-bucket-icon-row.png" alt="Bucket Links"/>
								</td>
								<td>Change item visibility, download data, learn more or share an item.</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div id="icon_area">
					<div id="holder">
						<div class="icon">
							<div class="icon_holder">
								<a href="<%=baseUrl%>/ui/item/CAckxGz"><img src="../images/info/extreme_storms.jpg" alt="extreme storms pic"/></a>
							</div><!--icon_holder-->
							<h3><a href="<%=baseUrl%>/ui/item/CAckxGz">Explore Extreme Storms</a></h3>
							<p>Coastal erosion hazards</p>
						</div><!--icon-->
						<div class="icon">
							<div class="icon_holder">
								<a href="<%=baseUrl%>/ui/item/CAkR645"><img src="../images/info/shoreline_change.jpg" alt="shoreline change pic"/></a>
							</div><!--icon_holder-->
							<h3><a href="<%=baseUrl%>/ui/item/CAkR645">Explore Shoreline Change</a></h3>
							<p>Historical positions and</p>
							<p>rates of change</p>
						</div><!--icon-->
						<div class="icon">
							<div class="icon_holder">
								<a href="<%=baseUrl%>/ui/item/CARv9Z5"><img src="../images/info/sea-leve_rise.jpg" alt="sea-level_rise pic"/></a>
							</div><!--icon_holder-->
							<h3><a href="<%=baseUrl%>/ui/item/CARv9Z5">Explore Sea-Level Rise</a></h3>
							<p>Vulnerability</p>
						</div><!--icon-->
					</div><!--icon_area-->
				</div><!--holder-->
			</div><!--content-->

		</div><!—wrapper—>

		<footer>
			<p id="usgsfooterbar">
				<a href="http://www.usgs.gov/laws/accessibility.html" title="Accessibility Policy (Section 508)">Accessibility</a>
				<a href="http://www.usgs.gov/foia/" title="Freedom of Information Act">FOIA</a>
				<a href="http://www.usgs.gov/laws/privacy.html" title="Privacy policies of the U.S. Geological Survey.">Privacy</a>
				<a href="http://www.usgs.gov/laws/policies_notices.html" title="Policies and notices that govern information posted on USGS Web sites.">Policies and Notices</a>
			</p>
			<a href="#"><img src="../images/info/usgs_logo.png" alt="usgs logo"/></a>
		</footer>
		<script type="text/javascript">
			var resizeHandler = function () {
				document.getElementById("content").style.height = '';
				var footer = document.getElementsByTagName('footer')[0],
					header = document.getElementsByTagName('header')[0],
					content = document.getElementById("content"),
					headerHeight = header.clientHeight,
					footerHeight = footer.clientHeight,
					windowHeight = window.innerHeight,
					contentHeight = content.clientHeight;

				if (headerHeight + contentHeight + footerHeight > windowHeight) {
					footer.style.top = headerHeight + contentHeight + 28 + 'px';
				} else {
					content.style.height = windowHeight - headerHeight - footerHeight - 2 + 'px';
				}
			}

			window.onresize = resizeHandler;
			window.onload = resizeHandler;

		</script>
	</body>
</html>
