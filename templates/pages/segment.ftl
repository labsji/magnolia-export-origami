<!DOCTYPE html>
<html xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}">
  <head>
    [@cms.page /]
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>${content.windowTitle!content.title!}</title>
    <meta name="description" content="${content.description!""}" />
    <meta name="keywords" content="${content.keywords!""}" />

    [#-- To load resources you can link them manually (e.g. line below) --]
      [#-- <link rel="stylesheet" type="text/css" href="${ctx.contextPath}/.resources/magnolia-export-origami/webresources/css/bootstrap.css" media="all" /> --]
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
  <body class="segment ${cmsfn.language()}">

    <div class="container">
      <h1>segment works!</h1>
	[@cms.area name="main"/]
	<table>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>Inverted Text Here</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>Content Text Here</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</table>
    </div>

    [#-- use resfn to load all js which matches the globbing pattern or link resources manually or via theme --]
    [#-- ${resfn.js(["/magnolia-export-origami/.*js"])!} --]
  </body>
</html>
