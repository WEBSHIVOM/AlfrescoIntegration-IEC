<@markup id="css" >
   <#-- CSS Dependencies -->

</@>

<@markup id="js">
   <#-- JavaScript Dependencies -->
</@>

<@markup id="widgets">
   <@createWidgets group="dashlets"/>
</@>

<@markup id="post">
</@>

<@markup id="html">
   <@uniqueIdDiv>   
		<div class="dashlet">
			<div class="title">${msg("header.label")}</div>   

			
			<div class="body dashlet-padding">
				
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

tr:nth-child(odd) {
    background-color: #dddddd;
}
</style>
</head>
<body>

<table>

<tr>
    <td>Id</td>
    <td>Name</td>
	<td>TiTle</td>
    <td>Created By</td>
	<td>Scope</td>
    <td>Purpose & justification</td>
	<td>CD Date</td>
    <td>IS Date</td>
	<td>Actions</td>
	<td>Vote</td>
     <td> Total Yes vote </td>
    <td> Total No vote </td>
  </tr>

  <#list docprop as t>
  <tr>
    <td>${t.id}</td>
	<td>${t.name}</td>
    <td>${t.title}</td>
    <td>${t.creator}</td>
    <td>${t.scope}</td>
    <td>${t.purpose}</td>
	<td>${t.cdmonth} / ${t.cdyear}</td>
	<td>${t.ismonth} / ${t.isyear}</td>
    
	<td>
    	<button><a href="/share/page/edit-metadata?nodeRef=${t.noderef}">Edit proposals</a></button>&nbsp;
    	<button><a href="/share/page/inline-edit?nodeRef=${t.noderef}">Edit File</a></button>&nbsp;
    	<button><a href="/alfresco/service/delete?dir=Sites/icon-iec-collaboration-network/documentLibrary&fileName=${t.name}">Delete</a></button>&nbsp;
    	<button><a href="/share/proxy/alfresco/slingshot/node/content/workspace/SpacesStore/${t.nodeid}/${t.name}?a=true">Download</a></button>
		<button><a href="/share/page/document-details?nodeRef=${t.noderef}#comment">Comment</a></button>
	</td>
	
	<td>
	<form action="/alfresco/service/vote" method="post" enctype="multipart/form-data">
	<input type="hidden" name="fileName" value="${t.name}">
    <input type="radio" name="vote" value="1"> Yes <br>
	<input type="radio" name="vote" value="0" > No <br>
	<input type="radio" name="vote" value="3" > None Of these <br>
	<input type="submit" value="VOTE">
	</form>
	</td>
	<td>${t.totalYes}</td>
	<td>${t.totalNo}</td>
	
	
  </tr>
  </#list>
  
</table>
				
				
			</div>
		</div>
   </@>
</@>