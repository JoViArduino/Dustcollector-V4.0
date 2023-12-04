<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="22" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="6" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="con-kyconedited" urn="urn:adsk.eagle:library:37925562">
<description>&lt;b&gt;Connector from KYCON, Inc&lt;/b&gt;&lt;p&gt;
1810 Little Orchard Street,&lt;br&gt;
San Jose,&lt;br&gt;
CA 95125 (408)494-0330&lt;br&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/autor&gt;</description>
<packages>
<package name="GLX-S-88M" urn="urn:adsk.eagle:footprint:37925566/1" locally_modified="yes" library_version="4" library_locally_modified="yes">
<description>&lt;b&gt;Mod. Jack, Right Angle, 8 posiotion, 8 contatcs&lt;/b&gt; RJ45&lt;p&gt;
Source: GLX-S-88M.pdf

Edited: 15-11-2022: measuments errors corrected. Pins now at 2.3 from holes for the two clamps</description>
<wire x1="-8.532" y1="3.9" x2="8.532" y2="3.9" width="0" layer="20"/>
<wire x1="8.25" y1="6.3" x2="8.25" y2="-3.302" width="0.2032" layer="21"/>
<wire x1="8.25" y1="-6.35" x2="8.25" y2="-7.875" width="0.2032" layer="21"/>
<wire x1="8.25" y1="-7.875" x2="-8.25" y2="-7.875" width="0.2032" layer="21"/>
<wire x1="-8.25" y1="-7.875" x2="-8.25" y2="-6.35" width="0.2032" layer="21"/>
<wire x1="-8.25" y1="-3.302" x2="-8.25" y2="6.3" width="0.2032" layer="21"/>
<wire x1="-8.25" y1="6.3" x2="8.25" y2="6.3" width="0.2032" layer="21"/>
<wire x1="-8.25" y1="-6.351" x2="-8.25" y2="-3.381" width="0.2032" layer="21"/>
<wire x1="8.25" y1="-3.381" x2="8.25" y2="-6.351" width="0.2032" layer="21"/>
<pad name="1" x="-3.5" y="-2" drill="0.9" diameter="1.4224" rot="R180"/>
<pad name="2" x="-2.5" y="-4.5" drill="0.9" diameter="1.4224"/>
<pad name="3" x="-1.5" y="-2" drill="0.9" diameter="1.4224"/>
<pad name="4" x="-0.5" y="-4.5" drill="0.9" diameter="1.4224"/>
<pad name="5" x="0.5" y="-2" drill="0.9" diameter="1.4224" rot="R180"/>
<pad name="6" x="1.5" y="-4.5" drill="0.9" diameter="1.4224"/>
<pad name="7" x="2.5" y="-2" drill="0.9" diameter="1.4224" rot="R180"/>
<pad name="8" x="3.5" y="-4.5" drill="0.9" diameter="1.4224"/>
<text x="-8.128" y="-9.652" size="1.27" layer="25">&gt;NAME</text>
<text x="1.42" y="-9.73" size="1.27" layer="27">&gt;VALUE</text>
<hole x="-7.5" y="0.3" drill="2"/>
<hole x="7.5" y="0.3" drill="2"/>
</package>
</packages>
<packages3d>
<package3d name="GLX-S-88M" urn="urn:adsk.eagle:package:37925567/1" type="box" library_version="4" library_locally_modified="yes">
<description>&lt;b&gt;Mod. Jack, Right Angle, 8 posiotion, 8 contatcs&lt;/b&gt; RJ45&lt;p&gt;
Source: GLX-S-88M.pdf</description>
<packageinstances>
<packageinstance name="GLX-S-88M"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="JACK8SH" urn="urn:adsk.eagle:symbol:37925563/2" library_version="4">
<wire x1="1.524" y1="10.668" x2="0" y2="10.668" width="0.254" layer="94"/>
<wire x1="0" y1="10.668" x2="0" y2="9.652" width="0.254" layer="94"/>
<wire x1="0" y1="9.652" x2="1.524" y2="9.652" width="0.254" layer="94"/>
<wire x1="1.524" y1="8.128" x2="0" y2="8.128" width="0.254" layer="94"/>
<wire x1="0" y1="8.128" x2="0" y2="7.112" width="0.254" layer="94"/>
<wire x1="0" y1="7.112" x2="1.524" y2="7.112" width="0.254" layer="94"/>
<wire x1="1.524" y1="5.588" x2="0" y2="5.588" width="0.254" layer="94"/>
<wire x1="0" y1="5.588" x2="0" y2="4.572" width="0.254" layer="94"/>
<wire x1="0" y1="4.572" x2="1.524" y2="4.572" width="0.254" layer="94"/>
<wire x1="1.524" y1="3.048" x2="0" y2="3.048" width="0.254" layer="94"/>
<wire x1="0" y1="3.048" x2="0" y2="2.032" width="0.254" layer="94"/>
<wire x1="0" y1="2.032" x2="1.524" y2="2.032" width="0.254" layer="94"/>
<wire x1="1.524" y1="0.508" x2="0" y2="0.508" width="0.254" layer="94"/>
<wire x1="0" y1="0.508" x2="0" y2="-0.508" width="0.254" layer="94"/>
<wire x1="0" y1="-0.508" x2="1.524" y2="-0.508" width="0.254" layer="94"/>
<wire x1="1.524" y1="-2.032" x2="0" y2="-2.032" width="0.254" layer="94"/>
<wire x1="0" y1="-2.032" x2="0" y2="-3.048" width="0.254" layer="94"/>
<wire x1="0" y1="-3.048" x2="1.524" y2="-3.048" width="0.254" layer="94"/>
<wire x1="1.524" y1="-4.572" x2="0" y2="-4.572" width="0.254" layer="94"/>
<wire x1="0" y1="-4.572" x2="0" y2="-5.588" width="0.254" layer="94"/>
<wire x1="0" y1="-5.588" x2="1.524" y2="-5.588" width="0.254" layer="94"/>
<wire x1="1.524" y1="-7.112" x2="0" y2="-7.112" width="0.254" layer="94"/>
<wire x1="0" y1="-7.112" x2="0" y2="-8.128" width="0.254" layer="94"/>
<wire x1="0" y1="-8.128" x2="1.524" y2="-8.128" width="0.254" layer="94"/>
<wire x1="-0.381" y1="-10.16" x2="0.254" y2="-10.16" width="0.127" layer="94"/>
<wire x1="1.016" y1="-10.16" x2="1.524" y2="-10.16" width="0.127" layer="94"/>
<wire x1="2.286" y1="-10.16" x2="2.794" y2="-10.16" width="0.127" layer="94"/>
<wire x1="3.048" y1="-10.16" x2="3.302" y2="-10.16" width="0.127" layer="94"/>
<wire x1="3.302" y1="-10.16" x2="3.302" y2="-9.652" width="0.127" layer="94"/>
<wire x1="3.302" y1="9.906" x2="3.302" y2="10.414" width="0.127" layer="94"/>
<wire x1="3.302" y1="10.922" x2="3.302" y2="11.43" width="0.127" layer="94"/>
<wire x1="3.302" y1="11.43" x2="2.794" y2="11.43" width="0.127" layer="94"/>
<wire x1="2.286" y1="11.43" x2="1.778" y2="11.43" width="0.127" layer="94"/>
<wire x1="1.27" y1="11.43" x2="0.762" y2="11.43" width="0.127" layer="94"/>
<wire x1="0.254" y1="11.43" x2="-0.381" y2="11.43" width="0.127" layer="94"/>
<wire x1="-0.381" y1="11.43" x2="-0.381" y2="10.668" width="0.127" layer="94"/>
<wire x1="-0.381" y1="9.652" x2="-0.381" y2="8.128" width="0.127" layer="94"/>
<wire x1="-0.381" y1="7.112" x2="-0.381" y2="5.588" width="0.127" layer="94"/>
<wire x1="-0.381" y1="4.572" x2="-0.381" y2="3.048" width="0.127" layer="94"/>
<wire x1="-0.381" y1="2.032" x2="-0.381" y2="0.508" width="0.127" layer="94"/>
<wire x1="-0.381" y1="-0.508" x2="-0.381" y2="-2.032" width="0.127" layer="94"/>
<wire x1="-0.381" y1="-3.048" x2="-0.381" y2="-4.572" width="0.127" layer="94"/>
<wire x1="-0.381" y1="-5.588" x2="-0.381" y2="-7.112" width="0.127" layer="94"/>
<wire x1="-0.381" y1="-8.128" x2="-0.381" y2="-10.16" width="0.127" layer="94"/>
<wire x1="4.826" y1="4.064" x2="4.826" y2="3.048" width="0.1998" layer="94"/>
<wire x1="4.826" y1="3.048" x2="4.826" y2="2.54" width="0.1998" layer="94"/>
<wire x1="4.826" y1="2.54" x2="4.826" y2="2.032" width="0.1998" layer="94"/>
<wire x1="4.826" y1="2.032" x2="4.826" y2="1.524" width="0.1998" layer="94"/>
<wire x1="4.826" y1="1.524" x2="4.826" y2="1.016" width="0.1998" layer="94"/>
<wire x1="4.826" y1="1.016" x2="4.826" y2="0.508" width="0.1998" layer="94"/>
<wire x1="4.826" y1="0.508" x2="4.826" y2="0" width="0.1998" layer="94"/>
<wire x1="4.826" y1="0" x2="4.826" y2="-0.508" width="0.1998" layer="94"/>
<wire x1="4.826" y1="-0.508" x2="4.826" y2="-1.524" width="0.1998" layer="94"/>
<wire x1="4.826" y1="-1.524" x2="7.366" y2="-1.524" width="0.1998" layer="94"/>
<wire x1="7.366" y1="-1.524" x2="7.366" y2="-0.254" width="0.1998" layer="94"/>
<wire x1="7.366" y1="-0.254" x2="8.89" y2="-0.254" width="0.1998" layer="94"/>
<wire x1="8.89" y1="-0.254" x2="8.89" y2="2.794" width="0.1998" layer="94"/>
<wire x1="8.89" y1="2.794" x2="7.366" y2="2.794" width="0.1998" layer="94"/>
<wire x1="7.366" y1="2.794" x2="7.366" y2="4.064" width="0.1998" layer="94"/>
<wire x1="7.366" y1="4.064" x2="4.826" y2="4.064" width="0.1998" layer="94"/>
<wire x1="4.826" y1="3.048" x2="5.588" y2="3.048" width="0.1998" layer="94"/>
<wire x1="4.826" y1="2.54" x2="5.588" y2="2.54" width="0.1998" layer="94"/>
<wire x1="4.826" y1="2.032" x2="5.588" y2="2.032" width="0.1998" layer="94"/>
<wire x1="4.826" y1="1.524" x2="5.588" y2="1.524" width="0.1998" layer="94"/>
<wire x1="4.826" y1="1.016" x2="5.588" y2="1.016" width="0.1998" layer="94"/>
<wire x1="4.826" y1="0.508" x2="5.588" y2="0.508" width="0.1998" layer="94"/>
<wire x1="4.826" y1="0" x2="5.588" y2="0" width="0.1998" layer="94"/>
<wire x1="4.826" y1="-0.508" x2="5.588" y2="-0.508" width="0.1998" layer="94"/>
<wire x1="3.302" y1="8.636" x2="3.302" y2="9.144" width="0.127" layer="94"/>
<wire x1="3.302" y1="7.366" x2="3.302" y2="7.874" width="0.127" layer="94"/>
<wire x1="3.302" y1="6.096" x2="3.302" y2="6.604" width="0.127" layer="94"/>
<wire x1="3.302" y1="4.826" x2="3.302" y2="5.334" width="0.127" layer="94"/>
<wire x1="3.302" y1="3.556" x2="3.302" y2="4.064" width="0.127" layer="94"/>
<wire x1="3.302" y1="2.286" x2="3.302" y2="2.794" width="0.127" layer="94"/>
<wire x1="3.302" y1="1.016" x2="3.302" y2="1.524" width="0.127" layer="94"/>
<wire x1="3.302" y1="-0.254" x2="3.302" y2="0.254" width="0.127" layer="94"/>
<wire x1="3.302" y1="-1.524" x2="3.302" y2="-1.016" width="0.127" layer="94"/>
<wire x1="3.302" y1="-2.794" x2="3.302" y2="-2.286" width="0.127" layer="94"/>
<wire x1="3.302" y1="-4.064" x2="3.302" y2="-3.556" width="0.127" layer="94"/>
<wire x1="3.302" y1="-5.334" x2="3.302" y2="-4.826" width="0.127" layer="94"/>
<wire x1="3.302" y1="-6.604" x2="3.302" y2="-6.096" width="0.127" layer="94"/>
<wire x1="3.302" y1="-7.874" x2="3.302" y2="-7.366" width="0.127" layer="94"/>
<wire x1="3.302" y1="-9.144" x2="3.302" y2="-8.636" width="0.127" layer="94"/>
<text x="3.81" y="10.668" size="1.778" layer="95">&gt;NAME</text>
<text x="3.81" y="-10.922" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="10.16" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="3" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="4" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="5" x="-2.54" y="0" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="6" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="7" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="8" x="-2.54" y="-7.62" visible="pad" length="short" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GLX-S-88M" urn="urn:adsk.eagle:component:37925569/4" prefix="X" library_version="4" library_locally_modified="yes">
<description>&lt;b&gt;Mod. Jack, Right Angle, 8 posiotion, 8 contatcs&lt;/b&gt; RJ45&lt;p&gt;
Source: GLX-S-88M.pdf</description>
<gates>
<gate name="G$1" symbol="JACK8SH" x="0" y="0"/>
</gates>
<devices>
<device name="RJ45" package="GLX-S-88M">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:37925567/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="3" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-jstedited">
<description>&lt;b&gt;J.S.T. Connectors&lt;/b&gt;&lt;p&gt;
J.S.T Mfg Co.,Ltd.&lt;p&gt;
http://www.jst-mfg.com&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="HDRV2W64P254_1X2_712X508X838B" urn="urn:adsk.eagle:footprint:37959111/1" locally_modified="yes">
<description>Single-row, 2-pin Pin Header (Male) Straight, 2.54 mm (0.10 in) col pitch, 5.84 mm mating length, 7.12 X 5.08 X 8.38 mm body
&lt;p&gt;Single-row (1X2), 2-pin Pin Header (Male) Straight package with 2.54 mm (0.10 in) col pitch, 0.64 mm lead width, 3.00 mm tail length and 5.84 mm mating length with overall size 7.12 X 5.08 X 8.38 mm, pin pattern - clockwise from top left&lt;/p&gt;</description>
<circle x="0" y="3.044" radius="0.25" width="0" layer="21"/>
<wire x1="4.83" y1="-2.54" x2="-2.29" y2="-2.54" width="0.12" layer="21"/>
<wire x1="-2.29" y1="-2.54" x2="-2.29" y2="2.54" width="0.12" layer="21"/>
<wire x1="-2.29" y1="2.54" x2="4.83" y2="2.54" width="0.12" layer="21"/>
<wire x1="4.83" y1="2.54" x2="4.83" y2="-2.54" width="0.12" layer="21"/>
<wire x1="4.83" y1="-2.54" x2="-2.29" y2="-2.54" width="0.12" layer="51"/>
<wire x1="-2.29" y1="-2.54" x2="-2.29" y2="2.54" width="0.12" layer="51"/>
<wire x1="-2.29" y1="2.54" x2="4.83" y2="2.54" width="0.12" layer="51"/>
<wire x1="4.83" y1="2.54" x2="4.83" y2="-2.54" width="0.12" layer="51"/>
<pad name="1" x="0" y="0" drill="0.85" diameter="1.9304" shape="long" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="0.85" diameter="1.9304" shape="long" rot="R90"/>
<text x="0" y="3.929" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-3.175" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="HDRV2W64P254_1X2_712X508X838B" urn="urn:adsk.eagle:package:37959106/1" type="model">
<description>Single-row, 2-pin Pin Header (Male) Straight, 2.54 mm (0.10 in) col pitch, 5.84 mm mating length, 7.12 X 5.08 X 8.38 mm body
&lt;p&gt;Single-row (1X2), 2-pin Pin Header (Male) Straight package with 2.54 mm (0.10 in) col pitch, 0.64 mm lead width, 3.00 mm tail length and 5.84 mm mating length with overall size 7.12 X 5.08 X 8.38 mm, pin pattern - clockwise from top left&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="HDRV2W64P254_1X2_712X508X838B"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PM-N">
<wire x1="0.254" y1="0" x2="-1.524" y2="0" width="0.4064" layer="94"/>
<text x="1.016" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<pin name="1" x="-5.08" y="0" visible="off" length="middle" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="JST2">
<gates>
<gate name="G$1" symbol="PM-N" x="17.78" y="7.62"/>
<gate name="G$2" symbol="PM-N" x="17.78" y="2.54"/>
</gates>
<devices>
<device name="" package="HDRV2W64P254_1X2_712X508X838B">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$2" pin="1" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:37959106/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="VALVE_PCB" library="con-kyconedited" library_urn="urn:adsk.eagle:library:37925562" deviceset="GLX-S-88M" device="RJ45" package3d_urn="urn:adsk.eagle:package:37925567/1"/>
<part name="UP" library="con-jstedited" deviceset="JST2" device="" package3d_urn="urn:adsk.eagle:package:37959106/1"/>
<part name="MOTOR" library="con-jstedited" deviceset="JST2" device="" package3d_urn="urn:adsk.eagle:package:37959106/1"/>
<part name="DOWN" library="con-jstedited" deviceset="JST2" device="" package3d_urn="urn:adsk.eagle:package:37959106/1"/>
<part name="LED" library="con-jstedited" deviceset="JST2" device="" package3d_urn="urn:adsk.eagle:package:37959106/1"/>
</parts>
<sheets>
<sheet>
<plain>
<text x="-15.24" y="35.56" size="1.778" layer="91">Pin 1 GND
Pin 2 5V
Pin 3 Valve open
Pin 4 Valve Closed
Pin 5 Motor GND
Pin 6 Motor VCC
Pin 7 LED GND
Pin 8 LED VCC</text>
<text x="-2.54" y="78.74" size="3.81" layer="91">Edit 28-04-2023</text>
<text x="53.34" y="42.545" size="1.778" layer="91">Signal - (open - gnd - closed 5V)
5V</text>
<text x="53.34" y="55.245" size="1.778" layer="91">Signal - (open - gnd - closed 5V)
5V</text>
<text x="52.705" y="67.945" size="1.778" layer="91">VCC 
GND</text>
</plain>
<instances>
<instance part="VALVE_PCB" gate="G$1" x="15.24" y="17.78" smashed="yes" rot="R270">
<attribute name="NAME" x="25.908" y="13.97" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="4.318" y="13.97" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="UP" gate="G$1" x="38.1" y="45.72" smashed="yes">
<attribute name="NAME" x="39.116" y="44.958" size="1.524" layer="95"/>
</instance>
<instance part="UP" gate="G$2" x="38.1" y="43.18" smashed="yes">
<attribute name="NAME" x="39.116" y="42.418" size="1.524" layer="95"/>
</instance>
<instance part="MOTOR" gate="G$1" x="38.1" y="35.56" smashed="yes">
<attribute name="NAME" x="39.116" y="34.798" size="1.524" layer="95"/>
</instance>
<instance part="MOTOR" gate="G$2" x="38.1" y="33.02" smashed="yes">
<attribute name="NAME" x="39.116" y="32.258" size="1.524" layer="95"/>
</instance>
<instance part="DOWN" gate="G$1" x="38.1" y="58.42" smashed="yes">
<attribute name="NAME" x="39.116" y="57.658" size="1.524" layer="95"/>
</instance>
<instance part="DOWN" gate="G$2" x="38.1" y="55.88" smashed="yes">
<attribute name="NAME" x="39.116" y="55.118" size="1.524" layer="95"/>
</instance>
<instance part="LED" gate="G$1" x="38.1" y="71.12" smashed="yes">
<attribute name="NAME" x="39.116" y="70.358" size="1.524" layer="95"/>
</instance>
<instance part="LED" gate="G$2" x="38.1" y="68.58" smashed="yes">
<attribute name="NAME" x="39.116" y="67.818" size="1.524" layer="95"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$6" class="0">
<segment>
<pinref part="DOWN" gate="G$1" pin="1"/>
<pinref part="VALVE_PCB" gate="G$1" pin="4"/>
<wire x1="17.78" y1="58.42" x2="33.02" y2="58.42" width="0.1524" layer="91"/>
<wire x1="17.78" y1="20.32" x2="17.78" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="LED" gate="G$2" pin="1"/>
<wire x1="7.62" y1="68.58" x2="33.02" y2="68.58" width="0.1524" layer="91"/>
<pinref part="VALVE_PCB" gate="G$1" pin="8"/>
<wire x1="7.62" y1="68.58" x2="7.62" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="LED" gate="G$1" pin="1"/>
<wire x1="33.02" y1="71.12" x2="10.16" y2="71.12" width="0.1524" layer="91"/>
<pinref part="VALVE_PCB" gate="G$1" pin="7"/>
<wire x1="10.16" y1="20.32" x2="10.16" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="VALVE_PCB" gate="G$1" pin="6"/>
<wire x1="12.7" y1="20.32" x2="12.7" y2="35.56" width="0.1524" layer="91"/>
<pinref part="MOTOR" gate="G$1" pin="1"/>
<wire x1="12.7" y1="35.56" x2="33.02" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="VALVE_PCB" gate="G$1" pin="5"/>
<wire x1="15.24" y1="20.32" x2="15.24" y2="33.02" width="0.1524" layer="91"/>
<pinref part="MOTOR" gate="G$2" pin="1"/>
<wire x1="15.24" y1="33.02" x2="33.02" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="VALVE_PCB" gate="G$1" pin="3"/>
<wire x1="20.32" y1="20.32" x2="20.32" y2="45.72" width="0.1524" layer="91"/>
<pinref part="UP" gate="G$1" pin="1"/>
<wire x1="20.32" y1="45.72" x2="33.02" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="UP" gate="G$2" pin="1"/>
<wire x1="22.86" y1="43.18" x2="33.02" y2="43.18" width="0.1524" layer="91"/>
<pinref part="DOWN" gate="G$2" pin="1"/>
<wire x1="22.86" y1="55.88" x2="33.02" y2="55.88" width="0.1524" layer="91"/>
<pinref part="VALVE_PCB" gate="G$1" pin="2"/>
<wire x1="22.86" y1="20.32" x2="22.86" y2="43.18" width="0.1524" layer="91"/>
<wire x1="22.86" y1="43.18" x2="22.86" y2="55.88" width="0.1524" layer="91"/>
<junction x="22.86" y="43.18"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
