<!DOCTYPE html>
<html xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}">
  <head>
    [@cms.page /]
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>${content.windowTitle!content.title!}</title>
    <meta name="description" content="${content.description!""}" />
    <meta name="keywords" content="${content.keywords!""}" />

      <link rel="stylesheet" type="text/css" href="${ctx.contextPath}/.resources/magnolia-export-origami/webresources/origami.css" media="all" /> 
  </head>
  <body class="tetra-origami ${cmsfn.language()}">
    <div class="container">
	 [#if content.printgrouping?has_content && content.printgrouping?size > 0]
	   [#list content.printgrouping as item]
	     [#assign origami = cmsfn.contentById(item, "origami")!]
	     [#-- <span class="label label-default">${origami.name!origami.@name!}</span> --]
	     	<table class = "origami-tetra-grid" >
		  <tr >
	            <td colspan="2" class="tetra-face1 " >
		     <div class="tetra-face " >
		      [@origami_tetra_text content_node=origami /]
		     </div>
	            </td>
		  </tr>
		  <tr>
	     	   <td class="tetra-face2">
		     <div class="tetra-face " >
		      [@origami_tetra_image content_node=origami /]
		     </div>
	  	   </td>
		   <td class="tetra-face3">
		     <div class="tetra-face " >
		      [@origami_tetra_text content_node=origami /]
		     </div>
		   </td>
		 </tr>
		</table>
	   [/#list]
	 [/#if]
    </div>
  </body>
</html>

[#macro origami_tetra_image content_node ]
 [#assign origami=content_node /]
 <div class="origami-image">
  [#if origami.title?has_content]
    <p>${origami.title!}</p>
  [/#if]
  [#if origami.image?has_content]
    [#-- Image rendering macro call here --] 
    [#assign imgItemKey = origami.image!]
	[#if imgItemKey??]
	    [#assign mythumbnailRendition = damfn.getRendition(imgItemKey, "thumbnail")!]
	    [#if mythumbnailRendition??]
		<img  src="${mythumbnailRendition.getLink()}"/>
	    [/#if]
	[/#if]
  [/#if]
  </div>
[/#macro]
[#macro origami_tetra_text content_node ]
 [#assign origami=content_node /]
 <div class="origami-text">
  [#if origami.description?has_content]
    <p > ${origami.description!}</p>
  [/#if]
  </div>
[/#macro]
