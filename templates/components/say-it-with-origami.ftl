[#-- Present content in component as table cells--]
	<td>
	[#-- Title and Image--]
	<div  class="titleimage">
	  [#if content.title?has_content]
	    <h2>${content.title!}</h2>
	  [/#if]

	  [#if content.image?has_content]
	    [#assign image = damfn.getAsset(content.image)]
	    [#assign imageLink = image.link]
	    <img
	      src='${imageLink!}'
	      class='img-responsive'
	      alt='${content.caption!"image"}'>
	  [/#if]

	</div>
	</td>
	<td>
	[#-- Description --]
	<div  class="description">

	  [#if content.desc?has_content]
	    ${cmsfn.decode(content).desc!}
	  [/#if]

	</div>
	</td>
