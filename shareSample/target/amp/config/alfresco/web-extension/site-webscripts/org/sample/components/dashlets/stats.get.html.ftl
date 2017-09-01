<@markup id="css" >
   <#-- CSS Dependencies -->
   <@link rel="stylesheet" type="text/css" href="${url.context}/res/components/dashlets/my-customsites.css"  group="dashlets" />
   <@link rel="stylesheet" type="text/css" href="${url.context}/res/modules/delete-customsite.css"  group="dashlets" />
   
</@>

<@markup id="js">
   <#-- JavaScript Dependencies -->
    
   <@script type="text/javascript" src="${url.context}/res/components/dashlets/my-customsites.js" group="dashlets"/>
   <@script type="text/javascript" src="${url.context}/res/modules/delete-customsite.js" group="dashlets"/>
</@>

<@markup id="widgets">
   <@createWidgets group="dashlets"/>
  
</@>

<@markup id="html">
   <@uniqueIdDiv>
      <#assign id = args.htmlid?html>
      <#assign dashboardconfig=config.scoped['Dashboard']['dashboard']>
      <div class="dashlet my-sites">
         <div class="title">${msg("List of Stats")}</div>
         <div class="toolbar flat-button">

		 
<head>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
</head>
<table>
  <tr>
    <th>Stats</th>
    <th>Value</th>
  </tr>
  <tr>
    <td>Number of Documents in IEC Site</td>
    <td>${count.count}</td>
  </tr>
  <tr>
    <td>Number of Documents in Text form</td>
    <td>${count.plain}</td>
  </tr>
   <tr>
    <td>Number of Documents in Pdf form</td>
    <td>${count.pdf}</td>
  </tr>
   <tr>
    <td>Number of Documents in Image form</td>
    <td>${count.image}</td>
  </tr>
   <tr>
    <td>Number of Documents in HTML form</td>
    <td>${count.html}</td>
  </tr>
   <tr>
    <td>Number of Documents in XLSX form</td>
    <td>${count.xlsx}</td>
  </tr> <tr>
    <td>Number of Documents in docx form</td>
    <td>${count.docx}</td>
  </tr>
</table>

            </div>
         </div>
         <div id="${id}-sites" class="body scrollableList" <#if args.height??>style="height: ${args.height?html}px;"</#if>></div>
      </div>
   </@>
</@>