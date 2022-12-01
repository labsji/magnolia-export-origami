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
      [#-- <script src="${ctx.contextPath}/.resources/magnolia-export-origami/webresources/js/jquery.js"></script> --]
    [#-- or via theme --]
      [#-- [#assign site = sitefn.site()!] --]
      [#-- [#assign theme = sitefn.theme(site)!] --]
      [#-- [#list theme.cssFiles as cssFile] --]
      [#--   [#if cssFile.conditionalComment?has_content]<!--[if ${cssFile.conditionalComment}]>[/#if] --]
      [#--     <link rel="stylesheet" type="text/css" href="${cssFile.link}" media="${cssFile.media}" /> --]
      [#--   [#if cssFile.conditionalComment?has_content]<![endif]-->[/#if] --]
      [#-- [/#list] --]
      [#-- [#list theme.jsFiles as jsFile] --]
      [#--   <script src="${jsFile.link}"></script> --]
      [#-- [/#list] --]
    [#-- uncomment next line to use resfn templating functions to load all css which matches a globbing pattern --]
      [#-- ${resfn.css(["/magnolia-export-origami/.*css"])!} --]
  </head>
  <body class="prism-origami ${cmsfn.language()}">

    <div class="container">
      [#-- <h1>prism-origami works!</h1> --]
	<table class="origami-prism-grid">
	 [#if content.printgrouping?has_content && content.printgrouping?size > 0]
	   [#list content.printgrouping as item]
	     [#assign origami = cmsfn.contentById(item, "origami")!]
	     [#-- <span class="label label-default">${origami.name!origami.@name!}</span> --]
		<tr>
			<td></td>
			<td class="face-front" >
			 <div class="title-image">
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
			 </td>
			 <td class="face-rear" >
			  [#if origami.description?has_content]
			    <p > ${origami.description!}</p>
			  [/#if]
			 </td>
			<td></td>
			<td></td>
		</tr>
	   [/#list]
	 [/#if]
        </table>
    </div>

    [#-- use resfn to load all js which matches the globbing pattern or link resources manually or via theme --]
    [#-- ${resfn.js(["/magnolia-export-origami/.*js"])!} --]

	[@cms.area name="main"/]
  </body>
</html>
