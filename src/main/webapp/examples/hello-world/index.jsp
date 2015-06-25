<%@ page import="canvas.SignedRequest" %>
<%@ page import="java.util.Map" %>
<%
    // Pull the signed request out of the request body and verify/decode it.
    Map<String, String[]> parameters = request.getParameterMap();
    String[] signedRequest = parameters.get("signed_request");
    if (signedRequest == null) {%>
        This App must be invoked via a signed request!<%
        return;
    }
    String yourConsumerSecret=System.getenv("CANVAS_CONSUMER_SECRET");
    //String yourConsumerSecret="1818663124211010887";
    String signedRequestJson = SignedRequest.verifyAndDecodeAsJson(signedRequest[0], yourConsumerSecret);
%>

<!--LT_Start-->


<HTML lang="en" class="rk-jpmac sponsor-aa sub-advised   pt-override ">
<HEAD>
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	
	
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"> 
		
	
	

	
	<TITLE>Financial Engines</TITLE>
	<h1>Hello <span id='username'> You are on Canvas Page</span></h1>
	
<!-- Added by Anil Madithat 06.24.2015-->	
<!-- Include all the canvas JS dependencies in one file -->
    <script type="text/javascript" src="/sdk/js/canvas-all.js"></script>
    <!-- Third part libraries, substitute with your own -->
    <script type="text/javascript" src="/scripts/json2.js"></script>

    <script>
        if (self === top) {
            // Not in Iframe
            alert("This canvas app must be included within an iframe");
        }

        Sfdc.canvas(function() {
            var sr = JSON.parse('<%=signedRequestJson%>');
            // Save the token
            Sfdc.canvas.oauth.token(sr.oauthToken);
            Sfdc.canvas.byId('username').innerHTML = sr.context.user.fullName;
        });

    </script>
<!-- Added by Anil Madithat 06.24.2015-->
<noscript>
			<meta http-equiv="refresh" content="0; URL=https://www.feitest.com/framework/nojs.act?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&ep=maconsole%2Fclientsearch.act&br=581">
		</noscript>
	
	








	<!-- DISABLE_FOR_ARCHIVED_VIEW_START -->

		
			<link rel="stylesheet" type="text/css" href="https://cdn.financialengines.net/feitest/_new/common/lib/yui.3.11.0/cssreset/cssreset-min.css">
		
			<link rel="stylesheet" type="text/css" href="https://cdn.financialengines.net/feitest/_new/common/lib/yui.3.11.0/cssfonts/cssfonts-min.css">
		
			<link rel="stylesheet" type="text/css" href="https://cdn.financialengines.net/feitest/_new/common/lib/yui.2.9.0/assets/skins/sam/skin.css">
		
			<link rel="stylesheet" type="text/css" href="https://cdn.financialengines.net/feitest/_new/common/fe/assets/skins/shared/skin-shared.css?version=mainline.04276">
		
			<link rel="stylesheet" type="text/css" href="https://cdn.financialengines.net/feitest/_new/common/fe/assets/skins/base/skin-base.css?version=mainline.04276">
		
			<link rel="stylesheet" type="text/css" href="https://cdn.financialengines.net/feitest/_new/adminweb/maconsole/maconsole.css?version=mainline.04276">
		

	<!-- DISABLE_FOR_ARCHIVED_VIEW_END -->


	

	
	<script type="text/javascript">
	var FE = {
		ENV: 				"TEST",
		DEBUG: 				true,
		AUDIO_ENABLED: 		true,
		VERSION: 			"mainline.04276",
		STATIC_ASSET_ROOT: 	"https://cdn.financialengines.net/feitest/",
		MSG_LEAVE_FE: 		"You are leaving Financial Engines. The link you have selected is located on another Website. Financial Engines is not responsible for any third-party content. Do you want to continue?",
		LAST_LOADED:		"1435247542167",
		SESSION: {
			T: 		'4027353531721649663859979',
			S: 		'tst32013ibc5mjl001',
			BR: 	'581',
			PT: 	'',
			EP: 	'maconsole/clientsearch.act',
			PACT: 	'maconsole.proxyuser-edit'
		}
	};
	</script>

	
	<script type="text/javascript">
		window.onerror = function(msg, url, line) {
			try	{
				if (typeof FE !== 'undefined' && FE.error) {
					FE.error(msg + " URL: " + url + " Line#: " + line);
				}
			}
			catch (e) {
				var err = new Error();
				err.message = msg;
				throw err;
			}

			return false;
		}
	</script>

	
	
	

	
		<script type="text/javascript" src="https://cdn.financialengines.net/feitest/util/comboYUI2.jsp?version=mainline.04276"></script>
	
		<script type="text/javascript" src="https://cdn.financialengines.net/feitest/util/comboYUI2Widgets.jsp?version=mainline.04276"></script>
	
		<script type="text/javascript" src="https://cdn.financialengines.net/feitest/util/comboYUI.jsp?version=mainline.04276"></script>
	
		<script type="text/javascript" src="https://cdn.financialengines.net/feitest/_new/common/lib/jquery-1.11.1/dist/jquery.min.js"></script>
	
		<script type="text/javascript" src="https://cdn.financialengines.net/feitest/util/comboSWF.jsp?version=mainline.04276"></script>
	
		<script type="text/javascript" src="https://cdn.financialengines.net/feitest/util/comboFECore.jsp?version=mainline.04276"></script>
	
		<script type="text/javascript" src="https://cdn.financialengines.net/feitest/util/comboFEIO.jsp?version=mainline.04276"></script>
	
		<script type="text/javascript" src="https://cdn.financialengines.net/feitest/util/comboFEWidgets.jsp?version=mainline.04276"></script>
	
		<script type="text/javascript" src="https://cdn.financialengines.net/feitest/util/FeStdScripts.js?version=mainline.04276"></script>
	

	
	











	<!-- DISABLE_FOR_ARCHIVED_VIEW_START -->
	<link rel="icon" type="image/x-icon" href="https://cdn.financialengines.net/feitest/favicon.ico?version=mainline.04276">
	<link rel="shortcut icon" type="image/x-icon" href="https://cdn.financialengines.net/feitest/favicon.ico?version=mainline.04276">
	<!-- DISABLE_FOR_ARCHIVED_VIEW_END -->
























	<script type="text/javascript">
	
	if (FE.preference) {
		
		FE.preference.serviceUrl = 'https://www.feitest.com/framework/json_uipreference.act?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&ep=maconsole%2Fclientsearch.act&br=581';
		FE.preference(function(pref) {
			FE.log('FE.preference.serviceUrl = ' + pref.serviceUrl);
		});
	}

	
	if (typeof Y !== 'undefined') {
		Y.on('domready', function() {
			if (FE.suppressDuplicateFormSubmit) {
				FE.suppressDuplicateFormSubmit({ replaceButtons: true });
			}
		});
	}
   	</script>






	
	
	
	
		<!--  :head theme="ajax"  /-->
	
</HEAD>



















<!--[if lt IE 7]>   <body id="body" class="pt-override  yui-skin-sam ie lt-ie7 lt-ie8 lt-ie9">  <![endif]-->
<!--[if IE 7]>      <body id="body" class="pt-override  yui-skin-sam ie ie7 lt-ie8 lt-ie9">     <![endif]-->
<!--[if IE 8]>      <body id="body" class="pt-override  yui-skin-sam ie ie8 gt-ie7 lt-ie9">     <![endif]-->
<!--[if IE 9]>      <body id="body" class="pt-override  yui-skin-sam ie ie9 gt-ie7 gt-ie8">     <![endif]-->
<!--[if gt IE 9]>   <body id="body" class="pt-override  yui-skin-sam ie gt-ie7 gt-ie8 gt-ie9">  <![endif]-->
<!--[if !IE]>-->    <body id="body" class="pt-override  yui-skin-sam not-ie">                   <!--<![endif]-->


	
	
	<script>
	  dataLayer = [{
		'pageName' : 'maconsole.clienthomenew.success',
		'envType' : 'ADMIN_TEST',
		'userId' : '4893',
		'providerId' : 'fe',
		'userType' : 'ADMIN',
		'namespace' : 'maconsole',
	  }];
	</script>
	<!-- Google Tag Manager -->
	<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-P57D3K"
	height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
	<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
	new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
	j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
	'//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
	})(window,document,'script','dataLayer','GTM-P57D3K');</script>
	<!-- End Google Tag Manager -->





<a id="stdDocTop"></a>
	
	





	
	<script type="text/javascript">
		var s_account='finengadminsdev';
	</script>

	<!-- SiteCatalyst code version: H.21.
		 Copyright 1996-2010 Adobe, Inc. All Rights Reserved
		 More info available at http://www.omniture.com -->
	<script type="text/javascript"  src="https://cdn.financialengines.net/feitest/_new/common/lib/omniture/s_code.js?version=mainline.04276"></script>

	<script type="text/javascript">			
		
			s.prop5="4893";
		
			s.channel="maconsole";
		
			s.prop6="fe";
		
			s.pageName="maconsole.clienthomenew.success";
		

	</script>


	
	

		
		<div id="jsErrorAlert" style="display: none; font-size: 11px; font-weight: bold; 
			position: fixed; _position: absolute; left: 5px; top: 5px; padding: 0 5px; 
		    color: #fff; background-color: #FF3333; z-index: 9999;">JavaScript error detected</div>
		

		<div id="page">



	<div id="header-logo"></div>
	<div id="header-extra" style="padding-top: 10px">	
		  
			&nbsp;
			<span id="home_changepass_link">
				<a id="link_ma_console_header_home" 
				href="https://www.feitest.com/framework/switchboard.act?s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&br=581&t=A544489322105350487559067">Workspace Tools Home</a>
				&nbsp;|&nbsp;
				<a id="link_ma_console_header_preferences" 
				href="https://www.feitest.com/framework/changepassword-edit.act?s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&ep=maconsole%2Fclientsearch.act%7C%2Fmaconsole%2Fclienthomenew.act&br=581&t=A544489322105350487559067">Change Password</a>
				&nbsp;
			</span>
			
				<span id="extra_delimiter">
				|&nbsp;
				</span>
				<a id="link_ma_console_header_logout" 
					href=https://www.feitest.com/framework/adminlogout.act?s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&br=581&t=A544489322105350487559067>Logout</a>				
				&nbsp;
						
	</div>
	
	
	<div id="page-top">
	
		<div id="tab-spacer"></div>
			<div id='main-tab'><ul><li id='tabClients' class='active' ><a id='lnktabClients' href='https://www.feitest.com/maconsole/clientsearch.act?s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&br=581&t=A544489322105350487559067'></a></li></ul></div><div id='main-tab-shoulder'><span></span></div><div id='sub-tab'><ul><li class=' first inactive'><div class='label'><a href='https://www.feitest.com/maconsole/clientsearch.act?s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&br=581&t=A544489322105350487559067' id='lnktabClientSearch'>Search</a></div></li><li class=' active'><div class='label'><a href='https://www.feitest.com/maconsole/clienthomenew.act?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&br=581' id='lnktabClientHome'>Home</a></div></li><li class=' inactive'><div class='label'><a href='https://www.feitest.com/maconsole/clientfeedashboard.act?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&br=581' id='lnktabFees'>Fees</a></div></li><li class=' inactive'><div class='label'><a href='https://www.feitest.com/maconsole/communication.act?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&br=581' id='lnktabComm'>Communications</a></div></li><li class=' inactive'><div class='label'><a href='https://www.feitest.com/maconsole/txnhistoryrebalandfuture.act?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&br=581' id='lnktabTrans'>Transactions</a></div></li><li class=' inactive'><div class='label'><a href='https://www.feitest.com/maconsole/personalize.act?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&br=581' id='lnktabAdvice'>Advice</a></div></li><li class=' inactive'><div class='label'><a href='https://www.feitest.com/maconsole/socialSecurityCalculator-edit.act?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&br=581' id='lnktabIncomeTools'>Income Tools</a></div></li><li class=' inactive'><div class='label'><a href='https://www.feitest.com/maconsole/sixtyplustab.act?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&init=true&br=581' id='lnktab60Plus'>Retirement&nbsp;Income</a></div></li><li class=' inactive'><div class='label'><a href='https://www.feitest.com/maconsole/eventloghistory.act?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&br=581' id='lnktabEvents'>History</a></div></li></ul></div><div id='sub-tab-shoulder'><span></span></div>
		</div>
		
		
		
		
			<div id="page-body" style="position: relative;">
			
				
					<div style="text-align: right; padding-right: 25px; position: absolute; top: 0px; right: 0; z-index: 1; font-size: 10px;">
					Client:&nbsp;<b>
					
					
						
						
						<a id="clientSnapshot" href="#">XXXXX XXXXX
							<script type="text/javascript">
								FE.createTooltipWithUrl("clientSnapshot", "https://www.feitest.com/maconsole/clientsnapshot.act?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&ep=maconsole%2Fclientsearch.act&br=581");
							</script></a>
						
				</b></div>
			
		
			<div id='page-body-content' class='has-sub-tabs main-tab'>
				
		
		



<!--LT_End-->








	
	<div>
	<a id="backToSearchUrl" href="https://www.feitest.com/maconsole/clientsearch.act?s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&ep=maconsole%2Fclientsearch.act&br=581&fetchCache=true&t=A544489322105350487559067">Back to Search Results</a>
	
	</div>
	
	

<div id="clientHome" class='page-main container '>

	<div class="page-main-hd">
		<div class="float-left">


<div id="page-title">
	<div id="page-title-primary">
		<div style="float: left;">
				XXXX XXXXX
		</div>
		<div class="spacer"></div>
	</div>
	    <div id="page-title-secondary"><b>User#</b> XXXXXXX, <b>Ext Client# </b>XXXXXXX, <b>CashEdge Id: </b>XXXXXXXXXX</div>
</div>

		</div>
		<div class="freq-asked-ques">
			
		</div>
			<div class="float-right"></div>
		<div class="spacer"></div>
	</div>
	

	<div class="page-main-bd">
		
	    	
	    	<div class="panel-divider"></div>
	    	
	
<div class="pnl-tbl-frame " id="pnlProfile-panel" style="">

	
		<div class="pnl-tbl-frame-top-with-ttl"><span class="pnl-tbl-frame-top-with-ttl-span"></span></div> <!-- left, top, right -->
		<div class="panel-title">
			<span>
				
				<div class="caption">Client Profile</div>
				
					<div class="smallLink"><a id="lnkClientProfileActions" href="javascript:void(0);">Actions</a></div>
				
				<div class="spacer"></div>
			</span>
		</div>
		
	
	<div class="pnl-tbl-frame-content" id="pnlProfile-content"> 
		<span class="pnl-tbl-frame-content-span"><table id="tblClientProfile" class="tbl-simple">
<tbody>
<tr class="odd">
<td style="text-align:left;width:20%;font-weight:bold;">Name</td>
<td style="text-align:left;width:20%">XXXXXX</td>
<td style="text-align:left;width:20%;font-weight:bold;">Enrollment Status</td>
<td style="text-align:left;width:20%">XXXXXX</td></tr>
<tr class="even">
<td style="text-align:left;width:20%;font-weight:bold;">Address</td>
<td style="text-align:left;width:20%">XXXXXXX</td>
<td style="text-align:left;width:20%;font-weight:bold;">User Status</td>
<td style="text-align:left;width:20%">XXXXXXXXX</td></tr>
<tr class="odd">
<td style="text-align:left;width:20%;font-weight:bold;">City, State, Zip</td>
<td style="text-align:left;width:20%">XXXXXXXXXX</td>
<td style="text-align:left;width:20%;font-weight:bold;">Eligibility for IRA</td>
<td style="text-align:left;width:20%">XXXXXXXX</td></tr>
<tr class="even">
<td style="text-align:left;width:20%;font-weight:bold;">Phone</td>
<td style="text-align:left;width:20%">XXXXX</td>
<td style="text-align:left;width:20%;font-weight:bold;">Retirement Goal</td>
<td style="text-align:left;width:20%"><a href='javascript:FE.openDialog({href: "https://www.feitest.com/FeContent?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&ep=maconsole%2Fclientsearch.act%7Cclosedialogbox&br=581&pt=legacydialog&act=maccretincgoal&id=4673174%3A%3A1", onHide: function(){window.location.reload();}});' id='retGoalLnk'>Not Personalized</a></td></tr>
<tr class="odd">
<td style="text-align:left;width:20%;font-weight:bold;">Date of Birth </td>
<td style="text-align:left;width:20%">XXXXXXXXX</td>
<td style="text-align:left;width:20%;font-weight:bold;">Savings (All Accts, 50+)</td>
<td style="text-align:left;width:20%">XXXXX</td></tr>
<tr class="even">
<td style="text-align:left;width:20%;font-weight:bold;">Total Non-AUM</td>
<td style="text-align:left;width:20%">XXXXXX</td>
<td style="text-align:left;width:20%;font-weight:bold;">XXXXXX</td>
<td style="text-align:left;width:20%">n/a</td></tr>
<tr class="odd">
<td style="text-align:left;width:20%;font-weight:bold;">Total AUM</td>
<td style="text-align:left;width:20%">XXXXXXX</td>
<td style="text-align:left;width:20%;font-weight:bold;">Direct Login</td>
<td style="text-align:left;width:20%">XXXXXXXX</td></tr>
<tr class="even">
<td style="text-align:left;width:20%;font-weight:bold;">Total Portfolio</td>
<td style="text-align:left;width:20%">XXXXXXXX</td>
<td style="text-align:left;width:20%;font-weight:bold;">Data Aggregation</td>
<td style="text-align:left;width:20%">XXXXXXX</td></tr></tbody></table></span>	
	</div>
		
	<div class="pnl-tbl-frame-bot"><span class="pnl-tbl-frame-bot-span"></span></div> <!-- left, bottom, right -->
	
</div>





<div class="panel-divider-small"></div>

<div class="btn-container">
	<div class="float-left">
							
	</div>
	
	<div class="float-right">
	
				
	</div>
	<div style="clear:both;"></div>
</div>	
				

	
<div id='popupmenu_clientProfile'></div>

<script type="text/javascript">
Y.use('fe-popup-menu', function(Y) {
	var anchorId = 'lnkClientProfileActions', 
	anchorNode = Y.one('#' + anchorId), 
	popupId = 'popupmenu_clientProfile', 
	popup;
	
	popup = new Y.FE.PopupMenu({
		
		align: { node: anchorNode, points: ["tr", "tl"]}
	
		, srcNode: '#' + popupId
	
		, items: [
		    null
		    
		    ,{
		  		label: 'Edit data'
	  			,href: 'https://www.feitest.com/maconsole/madataprofile.act?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&ep=maconsole%2Fclientsearch.act&br=581'
					
		  	}
		    
		  	   
		  	,{
		  		label: 'Enter IRA lead info'
		  		,action: function(e) {
					e.preventDefault();
										
					FE.openDialog({
						href: 'https://www.feitest.com/maconsole/iraleadinfo-edit.act?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&ep=maconsole%2Fclientsearch.act%7Cclosedialogbox&br=581&pt=dialog'
					});
				}		
						
			 }
		  	
		    
			
		  	 /***************************************************/
		     /* TODO:  BURCU                                    */
		     /*	1- NEED TO ADD THE IMG ICON                    */
		     /* 2- DO WE REFRESH THE PAGE AFTER CLOSE DIALOG?  */
		     /* Note: Currently implementing this as asterisk  */
		     /* for ENH109320 and BUG115205					   */
		    /**************************************************/
		  	,{
		  		label: 'View session log'
		  		,action: function(e) {
					e.preventDefault();
										
					FE.openDialog({
						href: 'https://www.feitest.com/maconsole/sessionLog.act?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&ep=maconsole%2Fclientsearch.act%7C%2Fmaconsole%2Fclienthomenew.act&br=581'
					});
				}		
						
			 }	
		  	
		  	,{		   
				label: 'View session history'
		  		,action: function(e){
		  			e.preventDefault();
		  			
		  			FE.openDialog({
		  				href: 'https://www.feitest.com/maconsole/sessionHistory.act?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&ep=maconsole%2Fclientsearch.act%7C%2Fmaconsole%2Fclienthomenew.act&br=581'
		  			})
		  		}
		  	}
		    
		    
		  	,{
		  		label: 'View Ops session log'
		  		,action: function(e) {
					e.preventDefault();
										
					FE.openWindow('https://www.feitest.com/FeContent?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&ep=maconsole%2Fclientsearch.act%7Cnull&br=581&pt=legacy&act=macntrlcnotes', '', {width:640, height:690})
				}
						
			  }
		  	
		  	
		  	,{
		  		label: 'Add/View exception notes'
		  		,action: function(e){
		  			e.preventDefault();
		  			
		  			FE.openDialog({
		  				href: 'https://www.feitest.com/maconsole/issaddnote-edit.act?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&ep=maconsole%2Fclientsearch.act%7C%2Fmaconsole%2Fclienthomenew.act&br=581&userId=3535317'
		  			})
		  		}
		  	}
		  	
		    
		  	,{
		  		label: 'Set up direct login'
		  		,action: function(e) {
					e.preventDefault();
										
					FE.openDialog({
						href: 'https://www.feitest.com/maconsole/setupdirectlogininput-edit.act?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&ep=maconsole%2Fclientsearch.act%7C%2Fmaconsole%2Fclienthomenew.act&br=581&userId=3535317'
					})
				}
						
			  }
		  	
		  	
		    
		  ]
		
		, render: true
	});	
	
	anchorNode.on('hover', Y.bind(popup.show, popup), Y.bind(popup.hide, popup));		
	
});

</script>

	
<div class="pnl-tbl-frame " id="pnlPersonalization-panel" style="">

	
		<div class="pnl-tbl-frame-top-with-ttl"><span class="pnl-tbl-frame-top-with-ttl-span"></span></div> <!-- left, top, right -->
		<div class="panel-title">
			<span>
				
				<div class="caption">Personalizations</div>
				
				
				<div class="spacer"></div>
			</span>
		</div>
		
	
	<div class="pnl-tbl-frame-content" id="pnlPersonalization-content"> 
		<span class="pnl-tbl-frame-content-span"><table id="tblPersonalization" class="tbl-simple">
<tbody>
<tr class="odd">
<td style="text-align:left;width:20%;font-weight:bold;">Retirement Age </td>
<td style="text-align:left;width:20%"><a href='javascript:FE.openDialog({href: "https://www.feitest.com/maconsole/editretage-edit.act?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&ep=maconsole%2Fclientsearch.act%7Cclosedialogbox&br=581&pt=dialog", onSave: FE.reloadWindow});' id='editage-link'>XXXXX</a></td>
<td style="text-align:left;width:20%;font-weight:bold;">Company Stock Cap</td>
<td style="text-align:left;width:20%">XXXXXX</td></tr>
<tr class="even">
<td style="text-align:left;width:20%;font-weight:bold;">Risk Tolerance</td>
<td style="text-align:left;width:20%"><a href='javascript:FE.openDialog({href: "https://www.feitest.com/maconsole/editrisktolerance-edit.act?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&ep=maconsole%2Fclientsearch.act%7Cclosedialogbox&br=581&pt=dialog", onSave: FE.reloadWindow});' id='edit-link'>XXXXXXX</a></td>
<td style="text-align:left;width:20%;font-weight:bold;">Outside Accounts</td>
<td style="text-align:left;width:20%"><a href='javascript:FE.openDialog({href: "https://www.feitest.com/maconsole/addaccount-create.act?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&ep=maconsole%2Fclientsearch.act%7Cclosedialogbox&br=581&pt=dialog", onHide: FE.reloadWindow});' id='addaccount-link'>XXXXXXXX</a></td></tr></tbody></table></span>	
	</div>
		
	<div class="pnl-tbl-frame-bot"><span class="pnl-tbl-frame-bot-span"></span></div> <!-- left, bottom, right -->
	
</div>



<div class="panel-divider-small"></div>
				
		
<div class="pnl-tbl-frame " id="pnlSponsor-panel" style="">

		<div id="pnlSponsor-panel-collapser" class="collapser panel-collapser">
	
		<div class="pnl-tbl-frame-top-with-ttl"><span class="pnl-tbl-frame-top-with-ttl-span"></span></div> <!-- left, top, right -->
		<div class="panel-title header">
			<span>
					<div id="pnlSponsor-panel-collapser-toggler" class="toggler"></div>
				
				<div class="caption">Sponsor Info</div>
				
					<div class="smallLink"><a id="lnkSponsorInfoActions" href="javascript:void(0);">Actions</a></div>
				
				<div class="spacer"></div>
			</span>
		</div>
		
		<div class="body">
	
	<div class="pnl-tbl-frame-content" id="pnlSponsor-content"> 
		<span class="pnl-tbl-frame-content-span"><table id="tblClientProfile" class="tbl-simple">
<tbody>
<tr class="odd">
<td style="text-align:left;width:20%;font-weight:bold;">Plan Sponsor</td>
<td style="text-align:left;width:20%">XXXXX</td>
<td style="text-align:left;width:20%;font-weight:bold;">Data as of</td>
<td style="text-align:left;width:20%">XXXXX</td></tr>
<tr class="even">
<td style="text-align:left;width:20%;font-weight:bold;">Plan Provider</td>
<td style="text-align:left;width:20%">XXXXXXXX</td>
<td style="text-align:left;width:20%;font-weight:bold;">Last Data Load-Successful</td>
<td style="text-align:left;width:20%">XXXXXXXXX</td></tr>
<tr class="odd">
<td style="text-align:left;width:20%;font-weight:bold;">Salary</td>
<td style="text-align:left;width:20%">XXXXXXX</td>
<td style="text-align:left;width:20%;font-weight:bold;">Last Transaction Date</td>
<td style="text-align:left;width:20%">XXXXXX</td></tr>
<tr class="even">
<td style="text-align:left;width:20%;font-weight:bold;">Enrollment Status</td>
<td style="text-align:left;width:20%">XXXXXX</td>
<td style="text-align:left;width:20%;font-weight:bold;">Savings Advice Enabled </td>
<td style="text-align:left;width:20%">XXXX</td></tr>
<tr class="odd">
<td style="text-align:left;width:20%;font-weight:bold;">Enrollment Type/Deadline</td>
<td style="text-align:left;width:20%">Opt-In</td>
<td style="text-align:left;width:20%;font-weight:bold;">Annual Increase</td>
<td style="text-align:left;width:20%">XXXXXXXX</td></tr>
<tr class="even">
<td style="text-align:left;width:20%;font-weight:bold;">Reason for Enrollment</td>
<td style="text-align:left;width:20%">XXXXXX</td>
<td style="text-align:left;width:20%;font-weight:bold;">Date of Hire</td>
<td style="text-align:left;width:20%">XXXXXXX</td></tr>
<tr class="odd">
<td style="text-align:left;width:20%;font-weight:bold;">Default Preference</td>
<td style="text-align:left;width:20%">XXXXXXX</td>
<td style="text-align:left;width:20%;font-weight:bold;">Employment Status</td>
<td style="text-align:left;width:20%">XXXXX</td></tr></tbody></table></span>	
	</div>
		
	<div class="pnl-tbl-frame-bot"><span class="pnl-tbl-frame-bot-span"></span></div> <!-- left, bottom, right -->
	
			</div> 
		</div> 
</div>


	<script type="text/javascript">
		new FE.widget.Collapser("pnlSponsor-panel-collapser");
			FE.page["pnlSponsor-panel-collapser"].expand();
	</script>


<div class="panel-divider-small"></div>	


<div id='popupmenu_sponsorInfo'></div>
	
<script type="text/javascript">
Y.use('fe-popup-menu', function(Y) {
	var anchorId = 'lnkSponsorInfoActions', 
	anchorNode = Y.one('#' + anchorId), 
	popupId = 'popupmenu_sponsorInfo', 
	popup;
	
	popup = new Y.FE.PopupMenu({
		
		align: { node: anchorNode, points: ["tr", "tl"]}
	
		, srcNode: '#' + popupId
	
		, items: [
		    null
		    
		    
		    ,{
		    	label: 'Enroll'
		    	,action: function(e){
		    		e.preventDefault();
		    		
		    		FE.openDialog({
		    			href: 'https://www.feitest.com/maconsole/confirmenrollment-edit.act?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&ep=maconsole%2Fclientsearch.act%7C%2Fmaconsole%2Fclienthomenew.act&br=581', width:'800px', height:'550px', onHide: FE.reloadWindow 
		    		})
		    	}
		    }
		    		  
		  
		   

		   
		    
		    
		    ,{
		    	label: 'Not interested'
		    	,action: function(e){
		    		e.preventDefault();
		    		
		    		FE.openDialog({
		    			href: 'https://www.feitest.com/maconsole/confirmnotinterested-edit.act?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&ep=maconsole%2Fclientsearch.act%7C%2Fmaconsole%2Fclienthomenew.act&br=581', onSave: function(o){window.location.reload();}
		    		})
		    	}
		    }
		     
		    
		    
		    
		    	
		    
		   
		    
		    	 
		  	
		  ]
		
		, render: true
	});	
	
	anchorNode.on('hover', Y.bind(popup.show, popup), Y.bind(popup.hide, popup));		
	
});

</script>
		
		
<div class="pnl-tbl-frame " id="pnlHolds-panel" style="">

		<div id="pnlHolds-panel-collapser" class="collapser panel-collapser">
	
		<div class="pnl-tbl-frame-top-with-ttl"><span class="pnl-tbl-frame-top-with-ttl-span"></span></div> <!-- left, top, right -->
		<div class="panel-title header">
			<span>
					<div id="pnlHolds-panel-collapser-toggler" class="toggler"></div>
				
				<div class="caption">Holds</div>
				
					<div class="smallLink"><a id="actionHolds" href="javascript:void(0);">Actions</a></div>
				
				<div class="spacer"></div>
			</span>
		</div>
		
		<div class="body">
	
	<div class="pnl-tbl-frame-content" id="pnlHolds-content"> 
		<span class="pnl-tbl-frame-content-span"><table id="tblHolds" class="tbl-simple">
<thead>
<tr>
<th>Date</th>
<th>Type</th>
<th>Admin</th>
<th class="last"></th></tr></thead>
<tbody></tbody></table></span>	
	</div>
		
	<div class="pnl-tbl-frame-bot"><span class="pnl-tbl-frame-bot-span"></span></div> <!-- left, bottom, right -->
	
			</div> 
		</div> 
</div>


	<script type="text/javascript">
		new FE.widget.Collapser("pnlHolds-panel-collapser");
			FE.page["pnlHolds-panel-collapser"].expand();
	</script>

		<div class="panel-divider-small"></div>	
		
			
<div class="pnl-tbl-frame " id="pnlRetirementIncome-panel" style="">

		<div id="pnlRetirementIncome-panel-collapser" class="collapser panel-collapser">
	
		<div class="pnl-tbl-frame-top-with-ttl"><span class="pnl-tbl-frame-top-with-ttl-span"></span></div> <!-- left, top, right -->
		<div class="panel-title header">
			<span>
					<div id="pnlRetirementIncome-panel-collapser-toggler" class="toggler"></div>
				
				<div class="caption">Retirement Income</div>
				
					<div class="smallLink"><a id="actionRetIncome" href="javascript:void(0);">Actions</a></div>
				
				<div class="spacer"></div>
			</span>
		</div>
		
		<div class="body">
	
	<div class="pnl-tbl-frame-content" id="pnlRetirementIncome-content"> 
		<span class="pnl-tbl-frame-content-span"><table id="tblRetirementIncome" class="tbl-simple">
<tbody>
<tr class="odd">
<td style="text-align:left;width:51%">Retirement Income Eligible?</td>
<td style="text-align:left;width:51%"><span id='spnElig'>XXXXXX</span></td>
<td style="text-align:left;width:51%"></td></tr>
<tr class="even">
<td style="text-align:left;width:51%">Investment Objective</td>
<td style="text-align:left;width:51%"><span id='spnObjective'>XXXXXX</span></td>
<td style="text-align:left;width:51%"></td></tr>
<tr class="odd">
<td style="text-align:left;width:51%">Payout Status</td>
<td style="text-align:left;width:51%"><span id='spnStatus'>XXXXX</span>. </td>
<td style="text-align:left;width:51%"></td></tr></tbody></table></span>	
	</div>
		
	<div class="pnl-tbl-frame-bot"><span class="pnl-tbl-frame-bot-span"></span></div> <!-- left, bottom, right -->
	
			</div> 
		</div> 
</div>


	<script type="text/javascript">
		new FE.widget.Collapser("pnlRetirementIncome-panel-collapser");
			FE.page["pnlRetirementIncome-panel-collapser"].expand();
	</script>

		
		
		
		
			
			
				
			
		
					
		
			
		
							
		
							
			
		
		<div class="panel-divider-small"></div>
		 
		 
		
		






	

	
		
<!-- Add Account link -->


<!-- IRACentral link -->

	





	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<!-- Total Retirement Advice link -->
		
		
		
		
		
		
		
		
		
		
		
		
		
				
	


<style type="text/css">
.money .per-year {
	font-weight: normal;
}

.link-cell {
	text-align: right;
	padding-right: 3px;
	white-space: nowrap;
}

.asterisk {
	display: inline;
	float: left;
	overflow: hidden;
}

#acct-footer-bt.spacer {
	height: 20px;
}

#excluded-asset-money {
	color: #9A9999;
}

</style>


	
	
	
	
	
	





<div class="pnl-tbl-frame " id="acct-panel" style="">

	
		<div class="pnl-tbl-frame-top-with-ttl"><span class="pnl-tbl-frame-top-with-ttl-span"></span></div> <!-- left, top, right -->
		<div class="panel-title">
			<span>
				
				<div class="caption">Accounts</div>
				
					<div class="smallLink"><a id="lnkAccountsActions" href="javascript:void(0);">Actions</a></div>
				
				<div class="spacer"></div>
			</span>
		</div>
		
	
	<div class="pnl-tbl-frame-content" id="acct-content"> 
		<span class="pnl-tbl-frame-content-span">		
		
		<table id="acct-table" class="tbl-simple">
			<thead>
				<tr>
					<th></th>
						<th>Account name</th>
						<th>Constraint</th>
						<th>Symbol</th>
						<th>Balance</th>
						<th>% of port.</th>
						<th>Contributions</th>
						<th></th>
				</tr>				
			</thead>
			<tbody>
				
				

					<tr id="group_acct_4673174__1" class="group">
						
						<td class='row-collapser-cell'>
							<div id="acct_4673174__1" class='row-collapser'></div>
						</td>
						
							<td class="group-name">
										
									
<a id="lnkacct_4673174__1" href="javascript:FE.openDialog({ href: &#34;https://www.feitest.com/maconsole/investanalysis.act?t\x3d4027353531721649663859979\x26s\x3dtst32013ibc5mjl001\x26pact\x3dmaconsole.clienthomenew\x26ep\x3dmaconsole\x252Fclientsearch.act\x26br\x3d581\x26id\x3d4673174\x253A\x253A1\x26accountName\x3d\x2524uper+\x2524aver+401\x2528k\x2529+Plan\x26analysisUrl\x3d\x252Fonlineadvice\x252Fjson_investanalysiscalc.act&#34; });" title="FE account ID: 4673174::1, External ID: XXXXXXXXXX">											$XXX $XXX 401(k) Plan 
											-- XXXX 
												, XXXXX 
</a>									
								
										<span class="eligible-management-icon"></span>
																
<span>* </span>															

									
								

							</td>
						
						
							<td></td>
						
							<td></td>
						
							<td>
								<div class="money" style="visibility: hidden;">
$XXXXX								</div>
							</td>
						
							<td></td>
						
							<td>
										<div class='money'>
$X<span class='per-year'>/yr</span>
										</div>
											
										<div class='float-left'>
										</div>	

							</td>
						
						
							<td>
								<div class="link-cell">

		
	
<a id="editInv4673174__1" href="javascript:void(0);" class="command-link ">edit </a>	
		

		

		

		<div id='popupmenu_editInv4673174__1'></div>
	
		<script type="text/javascript">
			Y.use('fe-popup-menu', function(Y) {
			
				var anchorId = 'editInv4673174__1', 
					anchorNode = Y.one('#' + anchorId), 
					popupId = 'popupmenu_' + anchorId, 
					popup;
				
				popup = new Y.FE.PopupMenu({
					
					align: { node: anchorNode, points: ['rc', 'lc'] }
					
					, srcNode: '#' + popupId
					
					, items: [
					
						null
						
							
							, {
								label: 'Investments' 
								, action: function(e) {
									e.preventDefault();
									FE.openDialog({
										href: 'https://www.feitest.com/maconsole/editinvest-edit.act?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&ep=maconsole%2Fclientsearch.act&br=581&id=4673174%3A%3A1' 
										, onSave: FE.reloadWindow
									});
								}
							}
						
						
							
							, {
								label: 'Account details'
								, action: function(e) {
									e.preventDefault();
									FE.openDialog({
										href: 'https://www.feitest.com/maconsole/editaccount-edit.act?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&ep=maconsole%2Fclientsearch.act&br=581&id=4673174%3A%3A1' 
										, onSave: FE.reloadWindow
										, onDelete: FE.reloadWindow
									});
								}
							}
						
							
							, {
								label: 'Contributions'
								, action: function(e) {
									e.preventDefault();
									FE.openDialog({
										href: 'https://www.feitest.com/maconsole/editcontributions-edit.act?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&ep=maconsole%2Fclientsearch.act&br=581&id=4673174%3A%3A1', 				  
										onHide: FE.reloadWindow
									});
								}
							}
					] 
					
					, render: true
					
				}); 
				
				anchorNode.on('hover', Y.bind(popup.show, popup), Y.bind(popup.hide, popup));
			});
		</script>

								</div>
							</td>								
					</tr>					
					
					<script type="text/javascript">
					(function() 
					{
						var rc = new FE.widget.RowCollapser("acct_4673174__1", true);
						rc.ToggleEvent.subscribe(function() 
						{
							var elTr = document.getElementById("group_acct_4673174__1");
							var v = (this.expanded) ? "hidden" : "visible";
							var el = Y2.util.Selector.query("div.money", elTr)[0];
							if (el) 
							{ 
								el.style.visibility = v; 
							}
							
							FE.preference.storeTogglerState(
								'MACALLCENTER', 
								'PANEL', 
								'acct_4673174__1', 
								rc.isExpanded());
						});
						
						Y2.util.Event.onContentReady("acct-table", function() 
						{
								rc.collapse();
						});
					})();
					</script>
					
					
						<tr class='by-acct_4673174__1'>
							<td class="id">4673174::1</td>
							
								<td class="indent">
										<a id="lnkM::1015722"
											href='javascript:FE.openWindow(
												"https://www.feitest.com/FeContent?t=4027353531721649663859979&amp;s=tst32013ibc5mjl001&amp;pact=maconsole.clienthomenew&amp;ep=maconsole%2Fclientsearch.act&amp;br=581&amp;pt=scorecard&amp;act=tearSheet&amp;in=M%3A%3A1015722&amp;g=&amp;ap=AA%3A%3A1"
											);'
												title='FE fund ID: M::1015722, RK fund ID:  1185'										
											>
AA Federal Credit Union										</a>
									
								</td>
							
							
								<td>
								</td>
							
								<td>
								</td>
							
								<td>
										<div id="balanceM::1015722" class='money'>
$XXXXXXX										</div>
								</td>
							
								<td>
									<div class="float-right">
										100%
									</div>
								</td>
							
								<td></td>
							
								<td>
								</td>
						</tr>
					  					<tr class='by-acct_4673174__1 subtotal'>
						<td class="id">4673174::1</td>
						
							<td class="indent">
Subtotal							</td>
						
							<td></td>
							<td></td>
						
							<td>
								<div class='money'>
$XXXXX								</div>
							</td>
						
							<td></td>
						
							<td></td>
							<td></td>
					</tr>
					
					
					<tr class='by-acct_4673174__1'><td colspan="8"></td></tr>
					
						
						
					
					<tr class='by-acct_4673174__1'><td colspan="8"></td></tr>
					
				 				<tr><td colspan="8"></td></tr>
				<tr class="total">
					<td></td>
						
						<td><a id="lnkAcctAnal" href="javascript:FE.openDialog({
					href: &#34;https://www.feitest.com/maconsole/investanalysis.act?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&ep=maconsole%2Fclientsearch.act&br=581&id=&accountName=&analysisUrl=%2Fonlineadvice%2Fjson_investanalysiscalc.act&#34;
				});">Total</a></td>
					
						<td></td>
						<td></td>
					
						<td>
							<div class='money'>
$XXXXXXXX							</div>
						</td>
					
						<td></td>
					
						<td>
							<div class='money'>
									$0<span class='per-year'>/yr</span>
							</div>
						</td>
					
						<td></td>
				</tr>
			</tbody>
		</table>
</span>	
	</div>
		
	<div class="pnl-tbl-frame-bot"><span class="pnl-tbl-frame-bot-span"></span></div> <!-- left, bottom, right -->
	
</div>




<div class="footnote">
					*These additional accounts are taken into consideration when monitoring your portfolio, even though they are not actively managed by the program.
				</div>
<div id="acct-footer-bt" class="spacer"></div>


	
	
	


<div id='popupmenu_accountsPanel'></div>
	
<script type="text/javascript">
Y.use('fe-popup-menu', function(Y) {
	var anchorId = 'lnkAccountsActions', 
		anchorNode = Y.one('#' + anchorId), 
		popupId = 'popupmenu_accountsPanel', 
		popup;
	
	popup = new Y.FE.PopupMenu({
		
		align: { node: anchorNode, points: ["tr", "tl"]}
	
		, srcNode: '#' + popupId
	
		, items: [
		    {
		    	label: 'Add account'
		    	,action: function(e){
		    		e.preventDefault();
		    		
		    		FE.openDialog({
		    			href: 'https://www.feitest.com/maconsole/addaccount-create.act?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&ep=maconsole%2Fclientsearch.act&br=581'
		    			, onHide: function(o) {window.location.reload();}
		    		})
		    	}
		    }
		    
		    
		    
		      
		    
		        
		    
		    , {
		    	label: 'Export'
		    	, href: 'https://www.feitest.com/onlineadvice/exportCurrentInvestments.act?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&ep=maconsole%2Fclientsearch.act&br=581'		    		
		    }
		  ]
		
		, render: true
	});	
	
	anchorNode.on('hover', Y.bind(popup.show, popup), Y.bind(popup.hide, popup));		
});
</script>


					
		
			
    
	 
	





<div class="pnl-tbl-frame " id="pnlSpecialOffer-panel" style="">

		<div id="pnlSpecialOffer-panel-collapser" class="collapser panel-collapser">
	
		<div class="pnl-tbl-frame-top-with-ttl"><span class="pnl-tbl-frame-top-with-ttl-span"></span></div> <!-- left, top, right -->
		<div class="panel-title header">
			<span>
					<div id="pnlSpecialOffer-panel-collapser-toggler" class="toggler"></div>
				
				<div class="caption">Special Offers</div>
				
				
				<div class="spacer"></div>
			</span>
		</div>
		
		<div class="body">
	
	<div class="pnl-tbl-frame-content" id="pnlSpecialOffer-content"> 
		<span class="pnl-tbl-frame-content-span"><table id="tblSpecialOffer" class="tbl-simple">
<thead>
<tr>
<th>Offer Name</th>
<th>Status</th>
<th>Offer Start</th>
<th>Expiration</th>
<th class="last"></th></tr></thead>
<tbody><tr class="empty"><td colspan="0">No offers available</td></tr></tr></tbody></table></span>	
	</div>
		
	<div class="pnl-tbl-frame-bot"><span class="pnl-tbl-frame-bot-span"></span></div> <!-- left, bottom, right -->
	
			</div> 
		</div> 
</div>


	<script type="text/javascript">
		new FE.widget.Collapser("pnlSpecialOffer-panel-collapser");
			FE.page["pnlSpecialOffer-panel-collapser"].expand();
	</script>
		<div class="spacer"></div>
	</div>
	
	<div class="page-main-ft">
		<div class="spacer"></div>
	</div>

</div>

<script type="text/javascript">
	FE.popAndShowGrowl();
</script>						



<div id='popupmenu_holds'></div>

<script type="text/javascript">
Y.use('fe-popup-menu', function(Y) {
	var anchorId = 'actionHolds', 
	anchorNode = Y.one('#' + anchorId), 
	popupId = 'popupmenu_holds', 
	popup;
	
	popup = new Y.FE.PopupMenu({
		
		align: { node: anchorNode, points: ["tr", "tl"]}
	
		, srcNode: '#' + popupId

		, items: [
	   		 null
	   		 
	   		
			
		   		,{
			  		label: 'Add Manual Hold'
		  			,action:function(e){
		  				e.preventDefault();
		  				
		  				FE.openDialog({
		  					href:'https://www.feitest.com/maconsole/holdadd-edit.act?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&ep=maconsole%2Fclientsearch.act&br=581', height:"500px", onHide: function(o) {window.location.reload();}
		  				})
		  			}
		   		}
		   		,{
			  		label: 'Add INR Hold'
		  			,action:function(e){
		  				e.preventDefault();
		  				
		  				FE.openDialog({
		  					href:'https://www.feitest.com/maconsole/holdadd-edit.act?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&ep=maconsole%2Fclientsearch.act&br=581&incident=true', height:"500px", name:"blah", onHide: function(o) {window.location.reload();}
		  				})
		  			}
		   		}
			
			,{
		  		label: 'View Hold History '
	  			,href: 'https://www.feitest.com/maconsole/holdhistory.act?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&ep=maconsole%2Fclientsearch.act&br=581'					
		  	}	
	   	]		
		, render: true
	});		
	anchorNode.on('hover', Y.bind(popup.show, popup), Y.bind(popup.hide, popup));			
});
</script>




<div id="popupmenu_retIncome"></div>

<script type="text/javascript">
Y.use('fe-popup-menu', function(Y) {
	var anchorId = 'actionRetIncome', 
	anchorNode = Y.one('#' + anchorId), 
	popupId = 'popupmenu_retIncome', 
	popup;
	
	popup = new Y.FE.PopupMenu({
		
		align: { node: anchorNode, points: ["tr", "tl"]}
	
		, srcNode: '#' + popupId

		, items: [
	   		 null
	   		 
	   		
	   		
	   		 
	   					   		
	   		
	   		,{
		  		label: 'View payout history'
	  			,href: 'https://www.feitest.com/maconsole/payouthistory.act?t=4027353531721649663859979&amp;s=tst32013ibc5mjl001&amp;pact=maconsole.clienthomenew&amp;ep=maconsole%2Fclientsearch.act&amp;br=581'					
		  	}
	   					   		

	   			
	   		
	   	]		
		, render: true
	});		
	anchorNode.on('hover', Y.bind(popup.show, popup), Y.bind(popup.hide, popup));
});		
</script>

		
		
<script type="text/javascript">
	$(function()
	{
		// js code added to support new text tool tip 
		var elCancelReasonErr = document.getElementById('cancel_reason_error');
		
		if (elCancelReasonErr) 
		{
			FE.createTooltip({
			id: 'cancel_reason_error_tooltip', 
			context: elCancelReasonErr, 
			bodyContent: "" });
		}
	});
</script>
	


<!--LB_Start-->























		


















































































 








 




























	









		

	
	
		</div>
		</div>
	
		
	
	<div id="page-bot">
		
			
			<div id='tab-bot' class='has-sub-tabs'><span></span></div>
		
	</div>


<div id="page-footer">
	<div class="links">
		
	</div>
</div>


</div>












   






	


	
		
		<div id="divDebugFooter" 
			style="background: #f2f2f2; 
					position: fixed; _position: absolute;
					left: 5px; bottom: 5px; 
					font-size: 10px; 
					opacity: 0.8;
					border: solid #dfdfdf thin;
					padding: 3px; text-align: left; ">
			
			
			<a id="divDebugLinksShow" href="javascript: stdbot_doShow('divDebugLinks');">
				<img valign="middle" 
					border="0"
					src="https://cdn.financialengines.net/feitest/_new/common/fe/assets/skins/base/collapsers/plus.gif?version=mainline.04276" />
				
				
				maconsole.clienthomenew
			</a>
			
			
			<a id="divDebugLinksHide" style="display: none;" href="javascript: stdbot_doHide('divDebugLinks');">
				<img src="https://cdn.financialengines.net/feitest/_new/common/fe/assets/skins/base/collapsers/minus.gif?version=mainline.04276" border="0" />
				maconsole.clienthomenew
			</a>
			
			
			<div id="divDebugLinks" style="display: none; padding-left: 14px; ">
				<A href="https://www.feitest.com/FeContent?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&ep=maconsole%2Fclientsearch.act&br=581&act=adm_pageprofile&pageAct=maconsole.clienthomenew">0.34s</A>
				&nbsp;|&nbsp;
				TP-Processor3
				&nbsp;|&nbsp;
				content.adminweb.maconsole.client.ClientHomeAction, /_new/adminweb/maconsole/client/clientHome.jsp, result=success
				&nbsp;|&nbsp;
				<A href="https://www.feitest.com/FeContent?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&ep=maconsole%2Fclientsearch.act&br=581&act=snooppact=maconsole.proxyuser-edit&br=581&t=4027353531721649663859979&ep=maconsole%2Fclientsearch.act&s=tst12021ibc5oe20dz&ep=maconsole%2Fclientsearch.act" target="snoop">snoop</a>
				&nbsp;|&nbsp;
				<A href="https://www.feitest.com/uidemo.act?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&ep=maconsole%2Fclientsearch.act&br=581">UI Widgets</a>
				&nbsp;|&nbsp;
			
				
				<span id="jsLogReaderLink" style="display: none;">
					<a id="jsLogReaderShow" href="javascript:void(0);">Show JavaScript Log</a>
					<a id="jsLogReaderHide" href="javascript:void(0);" style="display: none">Hide JavaScript Log</a>
					
						&nbsp;|&nbsp;
				</span>
				
				<script type="text/javascript">
					if (typeof FE !== 'undefined' && typeof Y !== 'undefined' && FE.hasConsoleSupport() === false) {
						Y.all('#jsLogReaderLink').show();
						Y.on('click', function() {
							Y.all("#jsLogReader, #jsLogReaderHide").show();
							Y.one("#jsLogReaderShow").hide();
						}, '#jsLogReaderShow');
						Y.on('click', function() {
							Y.all("#jsLogReader, #jsLogReaderHide").hide();
							Y.one("#jsLogReaderShow").show();
						}, '#jsLogReaderHide');
					}
				</script>
				
				
				<a id="profileInfoShow" href="javascript: stdbot_doShow('profileInfo');">Show Profiling Info</a>
				<a id="profileInfoHide" href="javascript: stdbot_doHide('profileInfo');" style="display: none">Hide Profiling Info</a>
					&nbsp;|&nbsp;
			
				
				<a id="turnOnWordWrap" href="javascript: stdbot_doTurnOnWordWrap();">
					Turn on word wrap</a>
				<a id="turnOffWordWrap" href="javascript: stdbot_doTurnOffWordWrap();" style="display: none">
					Turn off word wrap</a>
				&nbsp;|&nbsp;

				<a id="snapshotDom" href="javascript: snapshot_dom();">Snapshot DOM</a>
				<script type="text/javascript">
					function snapshot_dom()
					{
						if (FE && FE.preference && Y2.lang.isFunction(FE.preference.snapshotDom))
						{
							FE.preference.snapshotDom();
						}
					}
				</script>
				&nbsp;|&nbsp;
				<a id="lnkMsgReload" href="javascript: messageRefresh();" >MsgStore Refresh</a>
				<div id="pnlMsgRefresh" style="color: green;"></div>
				
				
				<script type="text/javascript">
					function messageRefresh ()
					{
						FE.updateAjaxContent( 'pnlMsgRefresh', 'https://www.feitest.com/FeContent?t=4027353531721649663859979&s=tst32013ibc5mjl001&pact=maconsole.clienthomenew&ep=maconsole%2Fclientsearch.act&br=581&act=refresh');	
					}
				</script>
			</div>
		
		</div>

	<script type="text/javascript">
		function stdbot_doShow(id)
		{
			document.getElementById(id).style.display = "block";
			document.getElementById(id + 'Show').style.display = "none";
			document.getElementById(id + 'Hide').style.display = "inline";
		}
		
		function stdbot_doHide(id)
		{
			document.getElementById(id).style.display = "none";
			document.getElementById(id + 'Show').style.display = "inline";
			document.getElementById(id + 'Hide').style.display = "none";
		}
		
		function stdbot_doTurnOnWordWrap()
		{
			if (document.getElementById('logInfo'))
			{
				document.getElementById('logInfo').style.wordWrap = 'break-word';
			}
			if (document.getElementById('profileInfo'))
			{
				document.getElementById('profileInfo').style.wordWrap = 'break-word';
			}
			
			document.getElementById('turnOnWordWrap').style.display = 'none';
			document.getElementById('turnOffWordWrap').style.display = 'inline';
		}
		
		function stdbot_doTurnOffWordWrap()
		{
			if (document.getElementById('logInfo'))
			{
				document.getElementById('logInfo').style.wordWrap = 'normal';
			}
			if (document.getElementById('profileInfo'))
			{
				document.getElementById('profileInfo').style.wordWrap = 'normal';
			}
			
			document.getElementById('turnOnWordWrap').style.display = 'inline';
			document.getElementById('turnOffWordWrap').style.display = 'none';
		}
		
		</script>
	
<div style="display: none; text-align: left; word-wrap: normal; background-color: white" id="profileInfo"><pre>
*** Profile info ***
***    main page ***
Profiling not enabled
</pre></div>





	
		<script language="JavaScript" type="text/javascript"><!--
		/************* DO NOT ALTER ANYTHING BELOW THIS LINE ! **************/
		s.t();//--></script>		



</body>







</html>









<!--LB_End-->

