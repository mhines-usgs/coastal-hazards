<div id="app-navbar-bucket-control-container" class="app-navbar-item-container" title="Manipulate Contents Of Your Data Bucket">
    <div class="app-navbar-bucket-container">
        <span id="app-navbar-bucket-button-container" class="app-navbar-bucket-button-container-unpopulated">
			<span id="app-navbar-bucket-button-count">
				<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
					 viewBox="0 0 48 50" enable-background="new 0 0 48 50" xml:space="preserve">
					<style>
						text{
                            font-size: 2px;
                            cursor: default;
                            font-family: Tahoma, Geneva, sans-serif;
						}
						.lab{
                            font-size: 12px;
						}
					</style>
					<g id="bucket">
						<path fill="#FFFFFF" d="M45,18.5H13c-0.3,0-0.5,0.2-0.5,0.5v5.2c0,0.3,0.2,0.5,0.5,0.5h1.4L16.2,46c0,0.1,0.1,0.2,0.3,0.2h24.9
							  c0.1,0,0.3-0.1,0.3-0.2L42.8,33l-12.7-7.7c-0.3,0.2-0.8,0.3-1.2,0.3c-1.3,0-2.3-1-2.3-2.3c0-1.3,1-2.3,2.3-2.3
							  c1.2,0,2.2,0.9,2.3,2.1l11.8,7.2l0.5-5.4H45c0.3,0,0.5-0.2,0.5-0.5v-5.2C45.6,18.8,45.3,18.5,45,18.5z">
						</path>
						<text class="lab" x="29" y="37" width="20" text-anchor="middle" fill="#003366">99
						</text>
						<path fill="#FFFFFF" d="M7.6,17.7 l 31,0 L 35.8,17.7 c 0,0,0,0,0,0 L 30.7,17.7 l -7.1,0 c 0,0,0,0,0,0 L 18.6,17.7z">
							<animate attributeName="d" dur="0.4s" id="grow1" begin = "addMoreTrg.begin" fill = "freeze" values=
									 "M13.6,17.7l31-0.1L35.8,12c-0.3-0.2-0.8-0.2-1.1,0.1L30.7,16l-7.1-7.3c-0.4-0.4-1-0.4-1.4,0L13.6,17.7z;
									 M14.6,17.7l31-0.1L35.8,11c-0.3-0.2-0.8-0.2-1.1,0.1L30.7,15 l-7.1,-8.3 c-0.4,-0.4,-1,-0.4,-1.4,0 L12.6,17.7z"/>
							<animate attributeName="d" dur="0.8s" id="shrink1" begin = "grow1.end;grow2.end" fill = "freeze" values=
									 "M14.6,17.7l31-0.1L35.8,11c-0.3-0.2-0.8-0.2-1.1,0.1L30.7,15 l-7.1,-8.3 c-0.4,-0.4,-1,-0.4,-1.4,0 L12.6,17.7z;
									 M13.6,17.7l31-0.1L35.8,12c-0.3-0.2-0.8-0.2-1.1,0.1L30.7,16l-7.1-7.3c-0.4-0.4-1-0.4-1.4,0L13.6,17.7z"/>
							<animate attributeName="d" dur="0.4s" id="grow2" begin = "addFirstTrg.begin" fill = "freeze" values=
									 "M7.6,17.7 l 31,0 L 35.8,17.7 c 0,0,0,0,0,0 L 30.7,17.7 l -7.1,0 c 0,0,0,0,0,0 L 18.6,17.7z;
									 M14.6,17.7l31-0.1L35.8,11c-0.3-0.2-0.8-0.2-1.1,0.1L30.7,15 l-7.1,-8.3 c-0.4,-0.4,-1,-0.4,-1.4,0 L12.6,17.7z"/>
							<animate attributeName="d" dur="0.3s" id="empty1" begin = "dumpBucketTrg.begin" fill = "freeze" values=
									 "M13.6,17.7l31-0.1L35.8,12c-0.3-0.2-0.8-0.2-1.1,0.1L30.7,16l-7.1-7.3c-0.4-0.4-1-0.4-1.4,0L13.6,17.7z;
									 M7.6,17.7 l 31,0 L 35.8,17.7 c 0,0,0,0,0,0 L 30.7,17.7 l -7.1,0 c 0,0,0,0,0,0 L 18.6,17.7z;"/>
						</path>

						<set attributeName="opacity" begin = "addMoreTrg.begin;openBucketTrg.begin;dumpBucketTrg.begin;addFirstTrg.begin" to="1"/>
						<animateTransform attributeType="xml" id="jiggle1" attributeName="transform" type="rotate" from="0 16.5 46" to="-1 16.5 46" begin="addMoreTrg.begin;grow2.end;empty1.end;flip4.end" dur="0.1s" fill="freeze"/>
						<animateTransform attributeType="xml" id="jiggle2" attributeName="transform" type="rotate" from="-1 16.5 46" to="0 16.5 46" begin="jiggle1.end" dur="0.1s" fill="freeze"/>
						<animateTransform attributeType="xml" id="jiggle3" attributeName="transform" type="rotate" from="0 41.5 46" to="0.5 41.5 46" begin="jiggle2.end" dur="0.1s" fill="freeze"/>
						<animateTransform attributeType="xml" id="jiggle4" attributeName="transform" type="rotate" from="0.5 41.5 46" to="0 41.5 46" begin="jiggle3.end" dur="0.1s" fill="freeze"/>
						<animateTransform attributeType="xml" id="flip1" attributeName="transform" type="rotate" from="0 41.5 46" to="11 41.5 46" begin="openBucketTrg.begin" dur="0.1s" fill="freeze"/>
						<animateTransform attributeType="xml" id="flip2" attributeName="transform" type="rotate" from="11 41.5 46" to="120 40 0" begin="flip1.end" dur="0.6s" fill="freeze"/>
						<animateTransform attributeType="xml" id="flip3" attributeName="transform" type="rotate" from="120 40 0" to= "11 41.5 46" begin="closeBucketTrg.begin" dur="0.6s" fill="freeze"/>
						<animateTransform attributeType="xml" id="flip4" attributeName="transform" type="rotate" from="11 41.5 46" to="0 41.5 46" begin="flip3.end" dur="0.1s" fill="freeze"/>

					</g>
					<g id="open_sand">
						<path id="falling_path" d="M29 -1 L 29 45 M29 -1 L 29 45 M-5 -5" visibility="hidden"/>
						<circle cy="-1" r="1" fill="#FFFFFF" opacity="1">
							<animateMotion id="grainf1" begin="flip2.end" dur="0.5s" repeatCount="4">
								<mpath xlink:href="#falling_path"/>
							</animateMotion>
						</circle>
						<circle cy="-2" cx="-2.3" r="1" fill="#FFFFFF" opacity="1">
							<animateMotion id="grainf1" begin="flip2.end+0.02" dur="0.6s" repeatCount="4">
								<mpath xlink:href="#falling_path"/>
							</animateMotion>
						</circle>
						<circle cy="-2" cx="3.1" r="1" fill="#FFFFFF" opacity="1">
							<animateMotion id="grainf1" begin="flip2.end" dur="0.55s" repeatCount="4">
								<mpath xlink:href="#falling_path"/>
							</animateMotion>
						</circle>
						<path id="sand_triangle" fill="#FFFFFF" d="M29,46 l 0,0 l 0 0z">
							<animate attributeName="d" dur="2s" begin = "flip2.end" fill = "freeze" values="M29,46 l 0,0 l 0 0z;M16.5,46 l 25,0 l -12.5 -8z"/>
							<set attributeName="opacity" begin = "flip2.end" to="1"/>
							<set attributeName="d" begin = "openBucketTrg.begin" to="M29,46 l 0,0 l 0 0z"/>
						</path>
						<animate attributeName="opacity" dur="0.1\s" begin = "closeBucketTrg.begin;openBucketTrg.begin" fill = "freeze" values="1;0"/>
						<animate attributeName="opacity" dur="1.0s" begin = "flip2.end" fill = "freeze" values="0;1"/>	
					</g>
					<g id="falling_sand">
						<circle cx="12.4" cy="18.5" r="1" fill="#FFFFFF" opacity="0">
							<animate attributeName="cy" id="grain1" dur="0.4s" begin = "addMoreTrg.begin;grow2.end" to="46" fill="freeze"/>
							<animate attributeName="opacity" dur="1.5s" begin = "grain1.end" fill = "freeze" from="1" to="0"/>
							<set attributeName="opacity" begin = "addMoreTrg.begin;grain1.begin" to="1"/>
						</circle>
						<circle cx="12.4" cy="18.5" r="1" fill="#FFFFFF" opacity="0">
							<animate attributeName="cy" id="grain2" dur="0.5s" begin = "addMoreTrg.begin;grow2.end" to="46" fill="freeze"/>
							<animate attributeName="cx" dur="0.5s" begin = "grain2.begin" to="14.4" fill="freeze"/>
							<animate attributeName="opacity" dur="1.8s" begin = "grain2.end" fill = "freeze" from="1" to="0"/>
							<set attributeName="opacity" begin = "addMoreTrg.begin;grow2.end" to="1"/>
						</circle>
						<path id="grain3_path" d="M12.4 17.5 l 1 26.5" visibility="hidden"/>
						<path id="grain3_path2" d="M12.9 44 l -2 0 l-2 2 l -10 0" visibility="hidden"/>
						<circle r="1" fill="#FFFFFF" opacity="0">
							<set attributeName="opacity" begin = "addMoreTrg.begin;grow2.end" to="1"/>
							<animate attributeName="opacity" dur="2.0s" begin = "path_ani.end" fill = "freeze" from="1" to="0"/>
							<animateMotion id="path_ani" begin="addMoreTrg.begin;grow2.end" dur="0.5s" repeatCount="1" fill = "freeze">
								<mpath xlink:href="#grain3_path"/>
							</animateMotion>
							<animateMotion id="path_ani" begin="path_ani.end" dur="1.0s" repeatCount="1" fill = "freeze">
								<mpath xlink:href="#grain3_path2"/>
							</animateMotion>
						</circle>
						<circle cx="45.6" cy="18.5" r="1" fill="#FFFFFF" opacity="0">
							<animate attributeName="cy" id="grain4" dur="0.4s" begin = "addMoreTrg.begin+0.4;grow2.end+0.4" to="46" fill="freeze"/>
							<animate attributeName="opacity" dur="1.5s" begin = "grain4.end" fill = "freeze" from="1" to="0"/>
							<set attributeName="opacity" begin = "grain4.begin" to="1"/>
							<set attributeName="opacity" begin = "addMoreTrg.begin;grow2.end" to="0"/>
							<set attributeName="cy" begin = "addMoreTrg.begin;grow2.end" to="18.5"/>
						</circle>
					</g>
					<animate id="dumpBucketTrg" begin="indefinite;dumpBucket.click"/>
					<animate id="openBucketTrg" begin="indefinite;openBucket.click"/>
					<animate id="addMoreTrg" begin="indefinite;addMore.click"/>
					<animate id="addFirstTrg" begin="indefinite;addFirst.click"/>
					<animate id="closeBucketTrg" begin="indefinite;closeBucket.click"/>
					<!--
					<path id="dumpBucket" fill="#8A8A8A" d="M73.9,8.5H60.6c-0.9,0-1.6-0.7-1.6-1.6V4.1c0-0.9,0.7-1.6,1.6-1.6h13.2 c0.9,0,1.6,0.7,1.6,1.6v2.7C75.5,7.7,74.8,8.5,73.9,8.5z"/>
					<path id="openBucket" fill="#8A8A8A" d="M73.9,18.5H60.6c-0.9,0-1.6-0.7-1.6-1.6v-2.7c0-0.9,0.7-1.6,1.6-1.6h13.2 c0.9,0,1.6,0.7,1.6,1.6v2.7C75.5,17.8,74.8,18.5,73.9,18.5z"/>
					<path id="addMore" fill="#8A8A8A" d="M73.9,28.6H60.6c-0.9,0-1.6-0.7-1.6-1.6v-2.7c0-0.9,0.7-1.6,1.6-1.6h13.2 c0.9,0,1.6,0.7,1.6,1.6v2.7C75.5,27.9,74.8,28.6,73.9,28.6z"/>
					<path id="addFirst" fill="#8A8A8A" d="M73.9,38.6H60.6c-0.9,0-1.6-0.7-1.6-1.6v-2.7c0-0.9,0.7-1.6,1.6-1.6h13.2 c0.9,0,1.6,0.7,1.6,1.6V37C75.5,37.9,74.8,38.6,73.9,38.6z"/>
					<path id="closeBucket" fill="#8A8A8A" d="M73.9,48.6H60.6c-0.9,0-1.6-0.7-1.6-1.6v-2.7c0-0.9,0.7-1.6,1.6-1.6h13.2 c0.9,0,1.6,0.7,1.6,1.6V47C75.5,47.9,74.8,48.6,73.9,48.6z"/>
					
					<text class="text" x="62" y="6" text-anchor="left" fill="#FFFFFF">dump bucket</text>
					<text class="text" x="62" y="16" text-anchor="left" fill="#FFFFFF">open bucket</text>
					<text class="text" x="62" y="26" text-anchor="left" fill="#FFFFFF">add (>0)</text>
					<text class="text" x="62" y="36" text-anchor="left" fill="#FFFFFF">add (first)</text>
					<text class="text" x="62" y="46" text-anchor="left" fill="#FFFFFF">close bucket</text>
					
					<g id="pivot_pts">
						<circle cx="16.5" cy="46" r="0.5" fill="#000000"/>
						<circle cx="41.5" cy="46" r="0.5" fill="#000000"/>
						<circle cx="45.6" cy="18.5" r="0.5" fill="#000000"/>
						<circle cx="12.4" cy="18.5" r="0.5" fill="#000000"/>
					</g>
					-->
				</svg>

			</span>
        </span>
    </div>
</div>