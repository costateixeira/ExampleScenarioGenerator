<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<xsl:output method="html" />
	<xsl:param name="pref" select="pref" />
	<xsl:template match="/">
		<head>
			<meta content="text/html;charset=utf-8" http-equiv="Content Type" />
			<title>{$pref}</title>
			<meta name="viewport" content="width=device-width, initial-scale=1.0" />
			<meta name="author" content="http://hl7.org/fhir" />
			<link href="fhir.css" rel="stylesheet" />
			<!-- Bootstrap core CSS -->
			<link href="assets/css/bootstrap.css" rel="stylesheet" />
			<link href="assets/css/bootstrap-fhir.css" rel="stylesheet" />
			<!-- Project extras -->
			<link href="assets/css/project.css" rel="stylesheet" />
			<link href="assets/css/pygments-manni.css" rel="stylesheet" />
			<link href="assets/css/jquery-ui.css" rel="stylesheet" />
			<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
			<!--[if lt IE 9]>
    <script src="assets/js/html5shiv.js"></script>
    <script src="assets/js/respond.min.js"></script>
    <![endif]-->
			<!-- Favicons -->
			<link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png" />
			<link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png" />
			<link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png" />
			<link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png" />
			<link rel="shortcut icon" href="assets/ico/favicon.png" />
			<script src="./assets/js/jquery.js"/>
			<script src="./assets/js/jquery-ui.min.js">
			</script>
			<script src="./assets/js/bootstrap.min.js">
			</script>
			<script type="text/javascript">//<![CDATA[
$(window).load(function(){
$("[data-tab]").on('click', function() {
    var tab = $(this).attr('data-tab'),
        target = $(this).attr('href');
    $('ul.nav a[href="' + tab + '"]').tab('show');
    $('html, body').animate({
        scrollTop: $(target).offset().top
    }, 10);    
});
});//]]></script>
		</head>
		<body>
			<div id="segment-header" class="segment">
				<!-- segment-header -->
				<div class="container">
					<!-- container -->
					<a id="logo" no-external="true" href="http://hl7.org/fhir">
						<img alt="logo fhir" src="assets/images/logo.png" />
					</a>
					<div id="hl7-status">
						<b>{{site.data.fhir.ig.name}}</b>
						{{site.data.fhir.ig.version}} - {{site.data.fhir.ig.status}}
					</div>
					<div id="hl7-nav">
						<a id="hl7-logo" no-external="true" href="http://www.hl7.org">
							<img height="50" alt="visit the hl7 website" width="42" src="assets/images/ihe.png" />
						</a>
					</div>
					<div id="hl7-search">
						<a id="hl7-search-lnk" no-external="true" href="http://hl7.org/fhir/search.cfm">
							<img alt="Search FHIR" src="assets/images/search.png" />
						</a>
					</div>
				</div>
				<div class="container">
					<!-- container -->
				</div>
			</div>
			<!-- /segment-header -->
			<div id="segment-navbar" class="segment">
				<!-- segment-navbar -->
				<div id="stripe">
				</div>
				<div class="container">
					<!-- container -->
					<!-- HEADER CONTENT -->
					<nav class="navbar navbar-inverse">
						<div class="container">
							<button data-target=".navbar-inverse-collapse" class="navbar-toggle" data-toggle="collapse" type="button">
								<span class="icon-bar" />
								<span class="icon-bar" />
								<span class="icon-bar" />
							</button>
							<a class="navbar-brand hidden" href="{{site.data.fhir.path}}index.html">FHIR</a>
							<div class="nav-collapse collapse navbar-inverse-collapse">
								{% include menu.xml %}
							</div>
							<!-- /.nav-collapse -->
						</div>
						<!-- /.container -->
					</nav>
					<!-- /.navbar -->
					<!-- /HEADER CONTENT -->
				</div>
				<!-- /container -->
			</div>
			<!-- /segment-navbar -->
			<div id="segment-breadcrumb" class="segment">
				<!-- segment-breadcrumb -->
				<div class="container">
					<!-- container -->
					<ul class="breadcrumb">{{site.data.pages[page.path].breadcrumb}}</ul>
				</div>
				<!-- /container -->
			</div>
			<!-- /segment-breadcrumb -->
			<div id="segment-content" class="segment">
				<!-- segment-content -->
				<div class="container">
					<!-- container -->
					<div class="row">
						<div class="inner-wrapper">

							<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://hl7.org/fhir ../../../../schema/fhir-single.xsd">




								<div id="segment-content" class="segment">
									<!-- segment-content -->
									<div class="container">
										<!-- container -->
										<div class="row">
											<div class="inner-wrapper">
												<!-- CONTENT CONTENT -->
												<div class="col-12">
													<ul class="nav nav-tabs">
														<li class="active">
															<a data-toggle="tab" href="#sequence">Sequence</a>
														</li>
														<li>
															<a data-toggle="tab" href="#details">Details</a>
														</li>
														<li>
															<a data-toggle="tab" href="#resources">Resources</a>
														</li>
													</ul>
													<div class="tab-content">
														<div id="sequence" class="tab-pane fade in active">
															<h3>
																<a name="description" />
																Description
															</h3>
															<p>
																<xsl:value-of select="/ExampleScenario/description/@value" />
															</p>
															<h4>
																<a name="preconditions" />
																Pre-Conditions
															</h4>
															<p>
																<xsl:value-of select="/ExampleScenario/process/preConditions/@value" />
															</p>
															<h4>
																<a name="postconditions" />
																Post Conditions
															</h4>
															<p>
																<xsl:value-of select="/ExampleScenario/process/postConditions/@value" />
															</p>
															<p />
															<img alt="Interaction diagram showing flow" src="../images/{$pref}diagram.png" usemap="#diagram_map" />
															<xsl:value-of select="unparsed-text('./diagram.cmapx')" disable-output-escaping="yes" />
														</div>
														<div id="details" class="tab-pane fade">
															<h2>
																<a name="details" />
																Details
															</h2>
															<div>
																<table class="cols">
																	<tr>
																		<td>
																			Publisher: (link?)
																			<xsl:value-of select="/ExampleScenario/publisher/@value" />
																		</td>
																		<td>
																			<a href="versions.html#maturity">Status</a>
																			:
																			<xsl:value-of select="/ExampleScenario/status/@value" />
																		</td>
																		<td>
																			<a href="versions.html#maturity">Experimental</a>
																			:
																			<xsl:value-of select="/ExampleScenario/experimental/@value" />
																		</td>
																		<td>
																			<a href="versions.html#maturity">Copyright</a>
																			:
																			<xsl:value-of select="/ExampleScenario/copyright/@value" />
																		</td>
																	</tr>
																</table>
																<table class="cols">
																	<tr>
																		<td>
																			<a href="versions.html#maturity">Purpose</a>
																			:
																			<xsl:value-of select="/ExampleScenario/purpose/@value" />
																		</td>
																	</tr>
																</table>
																<p />
																<p />
															</div>
															<div>
																<h3>
																	<a name="Actors" />
																	Actors
																</h3>
																<table class="grid">
																	<tbody>
																		<tr>
																			<th>Name</th>
																			<th>Type</th>
																			<th>Description</th>
																		</tr>
																		<xsl:apply-templates select="/ExampleScenario/actor" />
																	</tbody>
																</table>
																<p />
																<p />
															</div>
															<div>
																<h3>
																	<a name="flow" />
																	Process Flow -
																	<xsl:value-of select="/ExampleScenario/process/description/@value" />
																</h3>
																<xsl:apply-templates select="/ExampleScenario/process" />
															</div>
														</div>
														<div id="resources" class="tab-pane fade">
															<h3>Resources</h3>
															<h2>Resources</h2>
															<xsl:for-each-group select="ExampleScenario/instance/resourceType" group-by="@value">
																<xsl:apply-templates select="../resourceType" />
															</xsl:for-each-group>
														</div>
													</div>
													<!-- /row -->
													<!--									
								</div>
-->
												</div>
												<!-- /container -->
											</div>
										</div>
									</div>
								</div>
							</div>




						</div>  <!-- /inner-wrapper -->
					</div>  <!-- /row -->
				</div>  <!-- /container -->
			</div>  <!-- /segment-content -->

			{% if includetabscripts %}
			<script type="text/javascript" src="jquery.js"> </script>
			<script type="text/javascript" src="assets/js/jquery-ui.min.js"> </script>
			<script type="text/javascript">
				try {
				var currentTabIndex = sessionStorage.getItem('fhir-resource-tab-index');
				} catch(exception) {
				}

				if (!currentTabIndex)
				currentTabIndex = '0';

				$( '#tabs' ).tabs({
				active: currentTabIndex,
				activate: function( event, ui ) {
				var active = $('.selector').tabs('option', 'active');
				currentTabIndex = ui.newTab.index();
				document.activeElement.blur();
				try {
				sessionStorage.setItem('fhir-resource-tab-index', currentTabIndex);
				} catch(exception) {
				}
				}
				});
			</script>
			{% endif %}
			<div id="segment-footer" class="segment">  <!-- segment-footer -->
				<div class="container">  <!-- container -->
					<div class="inner-wrapper">
						<p>
							&#169; {{site.data.info.copyrightyear}} {{site.data.fhir.ig.publisher}}. Based on FHIR version ({{site.data.fhir.versionFull}}).  IG generated on {{site.data.fhir.genDate}}.
							<br/>
							<span style="color: #FFFF77">
								Links: <a style="color: #81BEF7" href="history.html">Version History</a> |
								<a style="color: #81BEF7" href="toc.html">Table of Contents</a> |
								<a style="color: #81BEF7" rel="license" href="{{site.data.fhir.path}}license.html"><img style="border-style: none;" alt="CC0" src="cc0.png"/></a> |
								<a style="color: #81BEF7" target="_blank" href="mailto:pharmacy@ihe.net">Propose a change <img alt="external" style="text-align: baseline" src="external.png"/></a>
							</span>
						</p>
					</div>  <!-- /inner-wrapper -->
				</div>  <!-- /container -->
			</div>  <!-- /segment-footer -->

			<div id="segment-post-footer" class="segment hidden">  <!-- segment-post-footer -->
				<div class="container">  <!-- container -->
				</div>  <!-- /container -->
			</div>  <!-- /segment-post-footer -->

			<!-- JS and analytics only. -->
			<!-- Bootstrap core JavaScript
  ================================================== -->
			<!-- Placed at the end of the document so the pages load faster -->
			<script type="text/javascript" src="assets/js/jquery.js"> </script>     <!-- note keep space here, otherwise it will be transformed to empty tag -> fails -->
			<script type="text/javascript" src="assets/js/bootstrap.min.js"> </script>
			<script type="text/javascript" src="assets/js/respond.min.js"> </script>
			<script type="text/javascript" src="assets/js/fhir.js"> </script>

			<!-- Analytics Below
  ================================================== -->
		</body>	  

	</xsl:template>

	<xsl:template match="actor">
		<tr>
			<td>
				<b>
					<xsl:value-of select="name/@value" />
				</b>
			</td>
			<td>
				<xsl:value-of select="type/@value" />
			</td>
			<td>
				<xsl:value-of select="description/@value" />
			</td>
		</tr>
	</xsl:template>


	<xsl:template match="/ExampleScenario/process">
		<!--		<h3><xsl:value-of select="title/@value"/></h3> <br/>  -->
		<div class="container">
			<div class="row">
				<div class="menu">
					<div class="accordion">
						<!-- Áreas -->
						<div class="accordion-group">
							<div class="accordion-heading area">Main Flow</div>
							<!-- /Área -->
							start finish
							<div class="accordion-body">
								<div class="accordion-inner">
									<div class="accordion">
										<xsl:apply-templates select="step" />
									</div>
								</div>
							</div>
						</div>
						<!-- /accordion -->
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="process">
		<xsl:value-of select="title/@value" />
		<ul>
			<xsl:apply-templates select="./step" />
		</ul>
	</xsl:template>


	<xsl:template match="step">
		<!-- Each Step -->
		<div class="accordion-group">
			<div class="accordion-heading">
				<a class="accordion-toggle" href="#{position()}" />
			</div>
			<div class="accordion-body" id="{position()}">
				<xsl:apply-templates select="./*" />
			</div>
			<!-- /Serviços -->
		</div>
		<p />
		<p />
	</xsl:template>

	<xsl:template match="operation">
		<a name="p2">
			<xsl:value-of select="number/@value" />
			.
		</a>
		<xsl:value-of select="name/@value" />
		<p />
		<xsl:value-of select="description/@value" />
		<p />
		<xsl:apply-templates select="./request" />
		<p />
		<xsl:apply-templates select="./response" />
		<p />
	</xsl:template>

	<xsl:template match="alternative">
		<a name="p2">
			Alternative:
			<xsl:value-of select="number/@value" />
		</a>
		<xsl:value-of select="name/@value" />
		<xsl:value-of select="description/@value" />
		<!-- IF STEP IS ALTERNATIVE -->
		<div class="accordion-inner">
			<div class="accordion">
				<xsl:apply-templates select="./option" />
				<!--
				<div class="accordion-group">
						<div class="accordion-heading ponto">
							<a class="accordion-toggle" data-toggle="collapse" href="{position()}">Option1 #1-1-1</a>
						</div>
						<div class="accordion-body" id="{position()}">
						<xsl:apply-templates select="./option"/>
						</div>
					</div>
					-->
			</div>
		</div>
	</xsl:template>
	<xsl:template match="option">
		<xsl:variable name="id" select="position()" />
		<xsl:variable name="optionname" select="./description/@value" />
		<div class="accordion-group">
			<div class="accordion-heading ponto">
				<a class="accordion-toggle" data-parent="{$id}" data-toggle="collapse" href="#{$id}">
					<xsl:value-of select="$id" />
					-
					<xsl:value-of select="./description/@value" />
				</a>
			</div>
			<!-- Serviços -->
			<div class="accordion-body" id="{$id}">
				<xsl:apply-templates select="./*" />
			</div>
			<!-- /Serviços -->
		</div>
	</xsl:template>
	<xsl:template match="pause">(pause)</xsl:template>
	<xsl:template match="request">
		<b>Request</b>
		(
		<xsl:value-of select="../receiver/@value" />
		-
		<xsl:value-of select="../initiator/@value" />
		):
		<xsl:apply-templates select="./resourceId" />
	</xsl:template>
	<xsl:template match="response">
		<b>Response</b>
		(
		<xsl:value-of select="../receiver/@value" />
		-
		<xsl:value-of select="../initiator/@value" />
		):
		<xsl:apply-templates select="./resourceId" />
	</xsl:template>
	<xsl:template match="resourceId">
		<xsl:variable name="iid" select="./@value" />
		<a href="example-instances.html#{/ExampleScenario/instance[resourceId/@value=$iid]/resourceId/@value}">
			<xsl:value-of select="/ExampleScenario/instance[resourceId/@value=$iid]/name/@value" />
		</a>
	</xsl:template>

	<xsl:template match="resourceType">
		<p />
		<xsl:variable name="thisResourceType" select="./@value" />
		<h3>
			<xsl:value-of select="$thisResourceType" />
		</h3>
		<table class="grid">
			<tbody>
				<tr>
					<th>Artifact</th>
					<th>Description</th>
					<th>Version</th>
					<th>Created by step</th>
					<th>Creating actor2</th>
				</tr>
				<xsl:apply-templates select="../../instance[resourceType/@value=$thisResourceType]" />
			</tbody>
		</table>
	</xsl:template>


	<xsl:template match="instance">
		<tr>
			<td>
				<a name="{resourceId/@value}" href="../examples/{resourceId/@value}">
					<b>
						<xsl:value-of select="name/@value" />
					</b>
				</a>
			</td>
			<td>
				<xsl:value-of select="description/@value" />
			</td>
			<td colspan="2">
		qqqqqqqqqqqqqqqq
			</td> 
		</tr>
	</xsl:template>
	

	<xsl:template match="versionId">

xxx123	


	</xsl:template>
	
	
	
</xsl:stylesheet>
