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
  <body class="cube-origami ${cmsfn.language()}">
    <div class="container">
	<table class="origami-cube-grid">
	<tr>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	 [#if content.printgrouping?has_content && content.printgrouping?size > 0]
	   [#list content.printgrouping as item]
	     [#assign origami = cmsfn.contentById(item, "origami")!]
	     [#-- <span class="label label-default">${origami.name!origami.@name!}</span> --]
	        [#if item?index == 0 ]
		  <tr>
		     <td></td>
		     <td></td>
		     <td></td>
		     <td class="cube-face cube-face-four" >
		      [@origami_cube_text content_node=origami /]
		     </td>
		  </tr>
	       [/#if]
	        [#if item?index == 1 ]
		  <tr>
		     <td class="cube-face" >
		      [@origami_cube_image content_node=origami /]
		     </td>
		     <td class="cube-face" >
		      [@origami_cube_text content_node=origami /]
		     </td>
		     <td class="cube-face" >
		      [@origami_cube_image content_node=origami /]
		     </td>
		     <td></td>
		  </tr>
	       [/#if]
	   [/#list]
	 [/#if]
	<tr>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
        </table>
    </div>
  </body>
</html>

[#macro origami_cube_image content_node ]
 [#assign origami=content_node /]
 <div class="cube-image">
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
[#macro origami_cube_text content_node ]
 [#assign origami=content_node /]
 <div class="cube-text">
  [#if origami.description?has_content]
    <p > ${origami.description!}</p>
  [/#if]
  </div>
[/#macro]
