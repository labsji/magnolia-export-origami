<svg version="1.1" id="origami_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" >
[#-- Fancy origami crease line content to be included below --]

	<g>
  <rect height="30" width="20" />
  <text style="fill:red;stroke:black;stroke-width:5;opacity:0.5" />
  [#if content.desc?has_content]
    ${cmsfn.decode(content).desc!}
  [/#if]
  </text>
  </g>
</svg>
