
   <#assign el=args.htmlid?html>

<@markup id="css" >
   <#-- CSS Dependencies -->
   <@link rel="stylesheet" type="text/css" href="${url.context}/res/components/dashlets/saved-search.css" group="dashlets" />
</@>

<@markup id="js">
   <#-- JavaScript Dependencies -->
   <@script type="text/javascript" src="${url.context}/res/components/search/search-lib.js" group="dashlets"/>
   <@script type="text/javascript" src="${url.context}/res/components/dashlets/saved-search.js" group="dashlets"/>
   <@script type="text/javascript" src="${url.context}/res/modules/simple-dialog.js" group="dashlets"/>
     <@script type="text/javascript" src="${url.context}/res/modules/docproperty.js" group="dashlets"/>
   
</@>

<@markup id="widgets">
   <#assign id=el?replace("-", "_")>
   <@inlineScript group="dashlets">
      var savedSearchDashletEvent${id} = new YAHOO.util.CustomEvent("onConfigSearchClick");
   </@>
   <@createWidgets group="dashlets"/>
   <@inlineScript group="dashlets">
      savedSearchDashletEvent${id}.subscribe(savedSearch.onConfigSearchClick, savedSearch, true);
   </@>
</@>
<@markup id="html">
   <@uniqueIdDiv>
      <div class="dashlet savedsearch">
    <!--  <select name="type">
		<option value="MAG">MAG</option>
		<option value="CGA">CGA</option>
		<option value="PAS">PAS</option>
	</select>	-->

 
         <div class="title" id="${el}-title">${msg("header")}</div>	<!--  -->
         <div id="${el}-list" class="body scrollableList" <#if args.height??>style="height: ${args.height?html}px;"</#if>>
            <div id="${el}-search-results"></div>
			<table>
<tr>
    <th style="width:300px;">Name </th>
    <th style="width:200px;">Creator </th>
    <th style="width:200px;">Date of Creation </th>
	<th style="width:200px;">Action </th>
</tr>
<#list docprop as t>
<tr>
    <td style="width:300px;">${t.name}</td>
	
    <td style="width:200px;">${t.creator}</td>
    <td style="width:200px;">${t.CreatedDate}</td>
	<form action="/alfresco/service/del" method="get">
		<input type="hidden" value="DocTypes/MAG" name="dir">
		<input type="hidden" value="${t.name}" name="fileName">
		<td style="width:200px;"><input type="submit" value="delete"/></td>
	</form>
</tr>
</#list>
</table>
			
         </div>
      </div>
   </@>
</@>

