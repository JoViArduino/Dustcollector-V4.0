<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.1.3">
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
<library name="con-ptr500" urn="urn:adsk.eagle:library:181">
<description>&lt;b&gt;PTR Connectors&lt;/b&gt;&lt;p&gt;
Aug. 2004 / PTR Meßtechnik:&lt;br&gt;
Die Bezeichnung der Serie AK505 wurde geändert.&lt;br&gt;
Es handelt sich hierbei um AK500 in horizontaler Ausführung.&lt;p&gt;
&lt;TABLE BORDER=0 CELLSPACING=1 CELLPADDING=2&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;Alte Bezeichnung&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;Neue Bezeichnung&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;AK505/2,grau&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#0000FF"&gt;AK500/2-5.0-H-GRAU&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;AK505/2DS,grau&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#0000FF"&gt;AK500/2DS-5.0-H-GRAU&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;AKZ505/2,grau&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#0000FF"&gt;AKZ500/2-5.08-H-GRAU&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
  &lt;/TABLE&gt;

&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="AK500/8" urn="urn:adsk.eagle:footprint:9860/1" library_version="1">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;</description>
<wire x1="-20.0914" y1="-3.556" x2="-20.0914" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-20.0914" y1="-3.556" x2="-10.0076" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="-20.0914" y1="3.048" x2="-20.5994" y2="3.175" width="0.1524" layer="21"/>
<wire x1="-20.0914" y1="3.048" x2="-20.0914" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-20.5994" y1="3.175" x2="-20.5994" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-20.5994" y1="2.032" x2="-20.0914" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-20.0914" y1="2.159" x2="-20.0914" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-20.0914" y1="2.159" x2="-10.0076" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-20.0914" y1="-2.159" x2="-10.0076" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-20.0914" y1="-2.159" x2="-20.0914" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-13.5128" y1="-1.397" x2="-11.0998" y2="1.016" width="0.1524" layer="51"/>
<wire x1="-13.8938" y1="-1.016" x2="-11.4808" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-18.923" y1="-1.016" x2="-16.51" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-18.542" y1="-1.397" x2="-16.129" y2="1.016" width="0.1524" layer="51"/>
<wire x1="-13.5128" y1="-1.016" x2="-11.4808" y2="1.016" width="0.6096" layer="51"/>
<wire x1="-18.542" y1="-1.016" x2="-16.51" y2="1.016" width="0.6096" layer="51"/>
<wire x1="-13.8938" y1="-1.016" x2="-13.5128" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="-11.4808" y1="1.397" x2="-11.0998" y2="1.016" width="0.1524" layer="51"/>
<wire x1="-18.923" y1="-1.016" x2="-18.542" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="-16.51" y1="1.397" x2="-16.129" y2="1.016" width="0.1524" layer="51"/>
<wire x1="-10.0076" y1="-3.556" x2="-10.0076" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-10.0076" y1="-3.556" x2="0" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="-10.0076" y1="2.159" x2="-10.0076" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-10.0076" y1="2.159" x2="0" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-10.0076" y1="-2.159" x2="0" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-10.0076" y1="-2.159" x2="-10.0076" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-3.5052" y1="-1.397" x2="-1.0922" y2="1.016" width="0.1524" layer="51"/>
<wire x1="-3.8862" y1="-1.016" x2="-1.4732" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-8.9154" y1="-1.016" x2="-6.5024" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-8.5344" y1="-1.397" x2="-6.1214" y2="1.016" width="0.1524" layer="51"/>
<wire x1="-3.5052" y1="-1.016" x2="-1.4732" y2="1.016" width="0.6096" layer="51"/>
<wire x1="-8.5344" y1="-1.016" x2="-6.5024" y2="1.016" width="0.6096" layer="51"/>
<wire x1="-3.8862" y1="-1.016" x2="-3.5052" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="-1.4732" y1="1.397" x2="-1.0922" y2="1.016" width="0.1524" layer="51"/>
<wire x1="-8.9154" y1="-1.016" x2="-8.5344" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="-6.5024" y1="1.397" x2="-6.1214" y2="1.016" width="0.1524" layer="51"/>
<wire x1="-10.0076" y1="3.937" x2="-20.0914" y2="3.937" width="0.1524" layer="21"/>
<wire x1="0" y1="-3.556" x2="0" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="0" y1="-3.556" x2="10.0076" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="0" y1="2.159" x2="0" y2="3.937" width="0.1524" layer="21"/>
<wire x1="0" y1="-2.159" x2="0" y2="2.159" width="0.1524" layer="21"/>
<wire x1="6.5024" y1="-1.397" x2="8.9154" y2="1.016" width="0.1524" layer="51"/>
<wire x1="6.1214" y1="-1.016" x2="8.5344" y2="1.397" width="0.1524" layer="51"/>
<wire x1="1.0922" y1="-1.016" x2="3.5052" y2="1.397" width="0.1524" layer="51"/>
<wire x1="1.4732" y1="-1.397" x2="3.8862" y2="1.016" width="0.1524" layer="51"/>
<wire x1="6.5024" y1="-1.016" x2="8.5344" y2="1.016" width="0.6096" layer="51"/>
<wire x1="1.4732" y1="-1.016" x2="3.5052" y2="1.016" width="0.6096" layer="51"/>
<wire x1="6.1214" y1="-1.016" x2="6.5024" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="8.5344" y1="1.397" x2="8.9154" y2="1.016" width="0.1524" layer="51"/>
<wire x1="1.0922" y1="-1.016" x2="1.4732" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="3.5052" y1="1.397" x2="3.8862" y2="1.016" width="0.1524" layer="51"/>
<wire x1="10.0076" y1="-3.556" x2="10.0076" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="20.0914" y1="3.937" x2="10.0076" y2="3.937" width="0.1524" layer="21"/>
<wire x1="20.0914" y1="3.937" x2="20.0914" y2="2.159" width="0.1524" layer="21"/>
<wire x1="10.0076" y1="-3.556" x2="20.0914" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="10.0076" y1="2.159" x2="10.0076" y2="3.937" width="0.1524" layer="21"/>
<wire x1="10.0076" y1="2.159" x2="20.0914" y2="2.159" width="0.1524" layer="21"/>
<wire x1="20.0914" y1="2.159" x2="20.0914" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="10.0076" y1="-2.159" x2="20.0914" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="10.0076" y1="-2.159" x2="10.0076" y2="2.159" width="0.1524" layer="21"/>
<wire x1="20.0914" y1="-2.159" x2="20.0914" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="16.51" y1="-1.397" x2="18.923" y2="1.016" width="0.1524" layer="51"/>
<wire x1="16.129" y1="-1.016" x2="18.542" y2="1.397" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-1.016" x2="13.5128" y2="1.397" width="0.1524" layer="51"/>
<wire x1="11.4808" y1="-1.397" x2="13.8938" y2="1.016" width="0.1524" layer="51"/>
<wire x1="16.51" y1="-1.016" x2="18.542" y2="1.016" width="0.6096" layer="51"/>
<wire x1="11.4808" y1="-1.016" x2="13.5128" y2="1.016" width="0.6096" layer="51"/>
<wire x1="16.129" y1="-1.016" x2="16.51" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="18.542" y1="1.397" x2="18.923" y2="1.016" width="0.1524" layer="51"/>
<wire x1="11.0998" y1="-1.016" x2="11.4808" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="13.5128" y1="1.397" x2="13.8938" y2="1.016" width="0.1524" layer="51"/>
<wire x1="0" y1="-2.159" x2="10.0076" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="0" y1="2.159" x2="10.0076" y2="2.159" width="0.1524" layer="21"/>
<wire x1="0" y1="3.937" x2="-10.0076" y2="3.937" width="0.1524" layer="21"/>
<wire x1="10.0076" y1="3.937" x2="0" y2="3.937" width="0.1524" layer="21"/>
<circle x="-12.4968" y="3.048" radius="0.508" width="0.1524" layer="21"/>
<circle x="-17.526" y="3.048" radius="0.508" width="0.1524" layer="21"/>
<circle x="-12.4968" y="0" radius="1.778" width="0.1524" layer="51"/>
<circle x="-17.526" y="0" radius="1.778" width="0.1524" layer="51"/>
<circle x="-2.4892" y="3.048" radius="0.508" width="0.1524" layer="21"/>
<circle x="-7.5184" y="3.048" radius="0.508" width="0.1524" layer="21"/>
<circle x="-2.4892" y="0" radius="1.778" width="0.1524" layer="51"/>
<circle x="-7.5184" y="0" radius="1.778" width="0.1524" layer="51"/>
<circle x="7.5184" y="3.048" radius="0.508" width="0.1524" layer="21"/>
<circle x="2.4892" y="3.048" radius="0.508" width="0.1524" layer="21"/>
<circle x="7.5184" y="0" radius="1.778" width="0.1524" layer="51"/>
<circle x="2.4892" y="0" radius="1.778" width="0.1524" layer="51"/>
<circle x="17.526" y="3.048" radius="0.508" width="0.1524" layer="21"/>
<circle x="12.4968" y="3.048" radius="0.508" width="0.1524" layer="21"/>
<circle x="17.526" y="0" radius="1.778" width="0.1524" layer="51"/>
<circle x="12.4968" y="0" radius="1.778" width="0.1524" layer="51"/>
<pad name="1" x="-17.526" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="2" x="-12.4968" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="3" x="-7.5184" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="4" x="-2.4892" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="5" x="2.4892" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="6" x="7.5184" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="7" x="12.4968" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="8" x="17.526" y="0" drill="1.3208" shape="long" rot="R90"/>
<text x="-20.0914" y="4.445" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-20.0914" y="-5.715" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-19.1516" y="2.54" size="0.9906" layer="21" ratio="12">1</text>
<text x="-14.1986" y="2.54" size="0.9906" layer="21" ratio="12">2</text>
<text x="-9.2456" y="2.54" size="0.9906" layer="21" ratio="12">3</text>
<text x="-4.1656" y="2.54" size="0.9906" layer="21" ratio="12">4</text>
<text x="0.8636" y="2.54" size="0.9906" layer="21" ratio="12">5</text>
<text x="5.8166" y="2.54" size="0.9906" layer="21" ratio="12">6</text>
<text x="10.7696" y="2.54" size="0.9906" layer="21" ratio="12">7</text>
<text x="15.8496" y="2.54" size="0.9906" layer="21" ratio="12">8</text>
<rectangle x1="-15.3924" y1="-1.905" x2="-14.6304" y2="1.905" layer="21"/>
<rectangle x1="-5.3848" y1="-1.905" x2="-4.6228" y2="1.905" layer="21"/>
<rectangle x1="4.6228" y1="-1.905" x2="5.3848" y2="1.905" layer="21"/>
<rectangle x1="14.6304" y1="-1.905" x2="15.3924" y2="1.905" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="AK500/8" urn="urn:adsk.eagle:package:9894/1" type="box" library_version="1">
<description>CONNECTOR</description>
<packageinstances>
<packageinstance name="AK500/8"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="KL" urn="urn:adsk.eagle:symbol:9788/2" library_version="3">
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<text x="-1.27" y="0.889" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<pin name="KL" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="KLV" urn="urn:adsk.eagle:symbol:9842/1" library_version="1">
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<text x="-1.27" y="0.889" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<text x="-3.81" y="-3.683" size="1.778" layer="96">&gt;VALUE</text>
<pin name="KL" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="AK500/8" urn="urn:adsk.eagle:component:9927/3" prefix="X" uservalue="yes" library_version="3">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="KL" x="0" y="33.02" addlevel="always"/>
<gate name="-2" symbol="KL" x="0" y="27.94" addlevel="always"/>
<gate name="-3" symbol="KL" x="0" y="22.86" addlevel="always"/>
<gate name="-4" symbol="KL" x="0" y="17.78" addlevel="always"/>
<gate name="-5" symbol="KL" x="0" y="12.7" addlevel="always"/>
<gate name="-6" symbol="KL" x="0" y="7.62" addlevel="always"/>
<gate name="-7" symbol="KL" x="0" y="2.54" addlevel="always"/>
<gate name="-8" symbol="KLV" x="0" y="-2.54" addlevel="always"/>
</gates>
<devices>
<device name="" package="AK500/8">
<connects>
<connect gate="-1" pin="KL" pad="1"/>
<connect gate="-2" pin="KL" pad="2"/>
<connect gate="-3" pin="KL" pad="3"/>
<connect gate="-4" pin="KL" pad="4"/>
<connect gate="-5" pin="KL" pad="5"/>
<connect gate="-6" pin="KL" pad="6"/>
<connect gate="-7" pin="KL" pad="7"/>
<connect gate="-8" pin="KL" pad="8"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:9894/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="2" constant="no"/>
</technology>
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
<part name="RJ3" library="con-kyconedited" library_urn="urn:adsk.eagle:library:37925562" deviceset="GLX-S-88M" device="RJ45" package3d_urn="urn:adsk.eagle:package:37925567/1"/>
<part name="X1" library="con-ptr500" library_urn="urn:adsk.eagle:library:181" deviceset="AK500/8" device="" package3d_urn="urn:adsk.eagle:package:9894/1"/>
</parts>
<sheets>
<sheet>
<plain>
<text x="203.2" y="30.48" size="2.54" layer="91" distance="65">1 GND
2 5V
3 EM Button
4 On Button
5 Off Button
6 LED Power
7 LED Air
8 LED Machine
Resistors for LED's in contorl box!!! 
</text>
</plain>
<instances>
<instance part="RJ3" gate="G$1" x="187.96" y="-10.16" smashed="yes" rot="R270">
<attribute name="NAME" x="198.628" y="-13.97" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="177.038" y="-13.97" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="X1" gate="-1" x="167.64" y="71.12" smashed="yes">
<attribute name="NAME" x="166.37" y="72.009" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X1" gate="-2" x="167.64" y="66.04" smashed="yes">
<attribute name="NAME" x="166.37" y="66.929" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X1" gate="-3" x="167.64" y="60.96" smashed="yes">
<attribute name="NAME" x="166.37" y="61.849" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X1" gate="-4" x="167.64" y="55.88" smashed="yes">
<attribute name="NAME" x="166.37" y="56.769" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X1" gate="-5" x="167.64" y="50.8" smashed="yes">
<attribute name="NAME" x="166.37" y="51.689" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X1" gate="-6" x="167.64" y="45.72" smashed="yes">
<attribute name="NAME" x="166.37" y="46.609" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X1" gate="-7" x="167.64" y="40.64" smashed="yes">
<attribute name="NAME" x="166.37" y="41.529" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X1" gate="-8" x="167.64" y="35.56" smashed="yes">
<attribute name="NAME" x="166.37" y="36.449" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="163.83" y="31.877" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="RJ3" gate="G$1" pin="8"/>
<wire x1="180.34" y1="-7.62" x2="180.34" y2="35.56" width="0.1524" layer="91"/>
<pinref part="X1" gate="-8" pin="KL"/>
<wire x1="180.34" y1="35.56" x2="172.72" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="X1" gate="-7" pin="KL"/>
<wire x1="172.72" y1="40.64" x2="180.34" y2="40.64" width="0.1524" layer="91"/>
<pinref part="RJ3" gate="G$1" pin="7"/>
<wire x1="180.34" y1="40.64" x2="182.88" y2="40.64" width="0.1524" layer="91"/>
<wire x1="182.88" y1="40.64" x2="182.88" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="RJ3" gate="G$1" pin="6"/>
<wire x1="185.42" y1="-7.62" x2="185.42" y2="45.72" width="0.1524" layer="91"/>
<pinref part="X1" gate="-6" pin="KL"/>
<wire x1="185.42" y1="45.72" x2="172.72" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="X1" gate="-5" pin="KL"/>
<wire x1="172.72" y1="50.8" x2="187.96" y2="50.8" width="0.1524" layer="91"/>
<wire x1="187.96" y1="50.8" x2="187.96" y2="48.26" width="0.1524" layer="91"/>
<pinref part="RJ3" gate="G$1" pin="5"/>
<wire x1="187.96" y1="48.26" x2="187.96" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="X1" gate="-3" pin="KL"/>
<wire x1="172.72" y1="60.96" x2="193.04" y2="60.96" width="0.1524" layer="91"/>
<pinref part="RJ3" gate="G$1" pin="3"/>
<wire x1="193.04" y1="60.96" x2="193.04" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="X1" gate="-1" pin="KL"/>
<wire x1="172.72" y1="71.12" x2="198.12" y2="71.12" width="0.1524" layer="91"/>
<pinref part="RJ3" gate="G$1" pin="1"/>
<wire x1="198.12" y1="71.12" x2="198.12" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="X1" gate="-4" pin="KL"/>
<wire x1="190.5" y1="55.88" x2="172.72" y2="55.88" width="0.1524" layer="91"/>
<pinref part="RJ3" gate="G$1" pin="4"/>
<wire x1="190.5" y1="-7.62" x2="190.5" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="X1" gate="-2" pin="KL"/>
<pinref part="RJ3" gate="G$1" pin="2"/>
<wire x1="195.58" y1="-7.62" x2="195.58" y2="66.04" width="0.1524" layer="91"/>
<wire x1="195.58" y1="66.04" x2="172.72" y2="66.04" width="0.1524" layer="91"/>
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
