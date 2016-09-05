<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:auth.storyboards="http:///auth/storyboards.ecore" xmlns:notation="http://www.eclipse.org/gmf/runtime/1.0.2/notation">
  <auth.storyboards:StoryboardDiagram xmi:id="_u1ehkDRxEeaWsq_jtadp-g">
    <storyboardactions xmi:type="auth.storyboards:Action" xmi:id="_wV5LcDRxEeaWsq_jtadp-g" nextNode="_zdkuEDRxEeaWsq_jtadp-g" name="get weather"/>
    <storyboardactions xmi:type="auth.storyboards:Action" xmi:id="_xaI2sDRxEeaWsq_jtadp-g" nextNode="_2MhAkDRxEeaWsq_jtadp-g" name="send email"/>
    <storyboardconditions xmi:type="auth.storyboards:Condition" xmi:id="_zdkuEDRxEeaWsq_jtadp-g" name="status">
      <conditionPaths xmi:type="auth.storyboards:ConditionPath" xmi:id="_3if8EDRxEeaWsq_jtadp-g" name="success" nextConditionNode="_xaI2sDRxEeaWsq_jtadp-g"/>
      <conditionPaths xmi:type="auth.storyboards:ConditionPath" xmi:id="_O6U-IDRyEeaWsq_jtadp-g" name="failure" nextConditionNode="_2MhAkDRxEeaWsq_jtadp-g"/>
    </storyboardconditions>
    <storyboardstartnode xmi:type="auth.storyboards:StartNode" xmi:id="_v4-l8DRxEeaWsq_jtadp-g" firstNode="_wV5LcDRxEeaWsq_jtadp-g"/>
    <storyboardendnode xmi:type="auth.storyboards:EndNode" xmi:id="_2MhAkDRxEeaWsq_jtadp-g"/>
  </auth.storyboards:StoryboardDiagram>
  <notation:Diagram xmi:id="_u5zA4DRxEeaWsq_jtadp-g" type="Storyboards" element="_u1ehkDRxEeaWsq_jtadp-g" name="Weather.scd" measurementUnit="Pixel">
    <children xmi:type="notation:Node" xmi:id="_v7OBoDRxEeaWsq_jtadp-g" type="2007" element="_v4-l8DRxEeaWsq_jtadp-g">
      <children xmi:type="notation:DecorationNode" xmi:id="_wAuzwDRxEeaWsq_jtadp-g" type="5006"/>
      <styles xmi:type="notation:DescriptionStyle" xmi:id="_v7OBoTRxEeaWsq_jtadp-g"/>
      <styles xmi:type="notation:FontStyle" xmi:id="_v7OBojRxEeaWsq_jtadp-g"/>
      <layoutConstraint xmi:type="notation:Bounds" xmi:id="_v7OBozRxEeaWsq_jtadp-g" x="173" y="74"/>
    </children>
    <children xmi:type="notation:Shape" xmi:id="_wWCVYDRxEeaWsq_jtadp-g" type="2006" element="_wV5LcDRxEeaWsq_jtadp-g">
      <children xmi:type="notation:DecorationNode" xmi:id="_wWCVYjRxEeaWsq_jtadp-g" type="5005"/>
      <layoutConstraint xmi:type="notation:Bounds" xmi:id="_wWCVYTRxEeaWsq_jtadp-g" x="228" y="84"/>
    </children>
    <children xmi:type="notation:Shape" xmi:id="_xaI2sTRxEeaWsq_jtadp-g" type="2006" element="_xaI2sDRxEeaWsq_jtadp-g">
      <children xmi:type="notation:DecorationNode" xmi:id="_xaI2szRxEeaWsq_jtadp-g" type="5005"/>
      <layoutConstraint xmi:type="notation:Bounds" xmi:id="_xaI2sjRxEeaWsq_jtadp-g" x="516" y="72"/>
    </children>
    <children xmi:type="notation:Node" xmi:id="_zdkuETRxEeaWsq_jtadp-g" type="2010" element="_zdkuEDRxEeaWsq_jtadp-g">
      <children xmi:type="notation:DecorationNode" xmi:id="_zdkuFjRxEeaWsq_jtadp-g" type="5008"/>
      <styles xmi:type="notation:DescriptionStyle" xmi:id="_zdkuEjRxEeaWsq_jtadp-g"/>
      <styles xmi:type="notation:FontStyle" xmi:id="_zdkuEzRxEeaWsq_jtadp-g"/>
      <styles xmi:type="notation:LineStyle" xmi:id="_zdkuFDRxEeaWsq_jtadp-g"/>
      <layoutConstraint xmi:type="notation:Bounds" xmi:id="_zdkuFTRxEeaWsq_jtadp-g" x="336" y="84"/>
    </children>
    <children xmi:type="notation:Node" xmi:id="_2MhAkTRxEeaWsq_jtadp-g" type="2009" element="_2MhAkDRxEeaWsq_jtadp-g">
      <styles xmi:type="notation:DescriptionStyle" xmi:id="_2MhAkjRxEeaWsq_jtadp-g"/>
      <styles xmi:type="notation:FontStyle" xmi:id="_2MhAkzRxEeaWsq_jtadp-g"/>
      <styles xmi:type="notation:LineStyle" xmi:id="_2MhAlDRxEeaWsq_jtadp-g"/>
      <layoutConstraint xmi:type="notation:Bounds" xmi:id="_2MhAlTRxEeaWsq_jtadp-g" x="677" y="87"/>
    </children>
    <styles xmi:type="notation:DiagramStyle" xmi:id="_u5zA4TRxEeaWsq_jtadp-g"/>
    <edges xmi:type="notation:Connector" xmi:id="_2nDAcDRxEeaWsq_jtadp-g" type="4004" source="_v7OBoDRxEeaWsq_jtadp-g" target="_wWCVYDRxEeaWsq_jtadp-g">
      <styles xmi:type="notation:FontStyle" xmi:id="_2nDAcTRxEeaWsq_jtadp-g"/>
      <element xsi:nil="true"/>
      <bendpoints xmi:type="notation:RelativeBendpoints" xmi:id="_2nDAcjRxEeaWsq_jtadp-g" points="[10, -3, -50, 0]$[45, -9, -15, -6]"/>
      <targetAnchor xmi:type="notation:IdentityAnchor" xmi:id="_2nDAczRxEeaWsq_jtadp-g" id="(0.16853932584269662,0.225)"/>
    </edges>
    <edges xmi:type="notation:Connector" xmi:id="_3GCpkDRxEeaWsq_jtadp-g" type="4006" source="_wWCVYDRxEeaWsq_jtadp-g" target="_zdkuETRxEeaWsq_jtadp-g">
      <styles xmi:type="notation:FontStyle" xmi:id="_3GCpkTRxEeaWsq_jtadp-g"/>
      <element xsi:nil="true"/>
      <bendpoints xmi:type="notation:RelativeBendpoints" xmi:id="_3GCpkjRxEeaWsq_jtadp-g" points="[7, 0, -98, -5]$[115, -15, 10, -20]"/>
      <sourceAnchor xmi:type="notation:IdentityAnchor" xmi:id="_3GCpkzRxEeaWsq_jtadp-g" id="(0.9213483146067416,0.375)"/>
    </edges>
    <edges xmi:type="notation:Connector" xmi:id="_3if8ETRxEeaWsq_jtadp-g" type="4001" element="_3if8EDRxEeaWsq_jtadp-g" source="_zdkuETRxEeaWsq_jtadp-g" target="_xaI2sTRxEeaWsq_jtadp-g">
      <children xmi:type="notation:DecorationNode" xmi:id="_3if8FDRxEeaWsq_jtadp-g" type="6001">
        <layoutConstraint xmi:type="notation:Location" xmi:id="_3if8FTRxEeaWsq_jtadp-g" x="-2" y="24"/>
      </children>
      <styles xmi:type="notation:FontStyle" xmi:id="_3if8EjRxEeaWsq_jtadp-g"/>
      <bendpoints xmi:type="notation:RelativeBendpoints" xmi:id="_3if8EzRxEeaWsq_jtadp-g" points="[9, 2, -91, -9]$[98, -9, -2, -20]"/>
      <sourceAnchor xmi:type="notation:IdentityAnchor" xmi:id="_3iptEDRxEeaWsq_jtadp-g" id="(0.8468468468468469,0.225)"/>
    </edges>
    <edges xmi:type="notation:Connector" xmi:id="_4EenwDRxEeaWsq_jtadp-g" type="4006" source="_xaI2sTRxEeaWsq_jtadp-g" target="_2MhAkTRxEeaWsq_jtadp-g">
      <styles xmi:type="notation:FontStyle" xmi:id="_4EenwTRxEeaWsq_jtadp-g"/>
      <element xsi:nil="true"/>
      <bendpoints xmi:type="notation:RelativeBendpoints" xmi:id="_4EenwjRxEeaWsq_jtadp-g" points="[39, -1, -84, 0]$[123, -1, 0, 0]"/>
      <targetAnchor xmi:type="notation:IdentityAnchor" xmi:id="_4EnxsDRxEeaWsq_jtadp-g" id="(0.0,0.2)"/>
    </edges>
    <edges xmi:type="notation:Connector" xmi:id="_O6U-ITRyEeaWsq_jtadp-g" type="4001" element="_O6U-IDRyEeaWsq_jtadp-g" source="_zdkuETRxEeaWsq_jtadp-g" target="_2MhAkTRxEeaWsq_jtadp-g">
      <children xmi:type="notation:DecorationNode" xmi:id="_O6U-JDRyEeaWsq_jtadp-g" type="6001">
        <layoutConstraint xmi:type="notation:Location" xmi:id="_O6U-JTRyEeaWsq_jtadp-g" y="8"/>
      </children>
      <styles xmi:type="notation:FontStyle" xmi:id="_O6U-IjRyEeaWsq_jtadp-g"/>
      <bendpoints xmi:type="notation:RelativeBendpoints" xmi:id="_O6U-IzRyEeaWsq_jtadp-g" points="[6, -6, -296, -13]$[6, -59, -296, -66]$[302, -59, 0, -66]$[302, -3, 0, -10]"/>
      <sourceAnchor xmi:type="notation:IdentityAnchor" xmi:id="_O6evIDRyEeaWsq_jtadp-g" id="(0.6126126126126126,0.15)"/>
    </edges>
  </notation:Diagram>
</xmi:XMI>
