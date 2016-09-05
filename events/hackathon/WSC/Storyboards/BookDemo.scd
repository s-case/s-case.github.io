<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:auth.storyboards="http:///auth/storyboards.ecore" xmlns:notation="http://www.eclipse.org/gmf/runtime/1.0.2/notation">
  <auth.storyboards:StoryboardDiagram xmi:id="_uSWqkJ0MEeWQyO_X4wdW0g">
    <storyboardactions xmi:type="auth.storyboards:Action" xmi:id="_zQ8rgJ0MEeWQyO_X4wdW0g" nextNode="_WVg_EJ2dEeWYAI3gQKWt8Q" name="get book price"/>
    <storyboardactions xmi:type="auth.storyboards:Action" xmi:id="_a8tzsJ2dEeWYAI3gQKWt8Q" nextNode="_yvtmsJ0MEeWQyO_X4wdW0g" name="convert price to euro"/>
    <storyboardconditions xmi:type="auth.storyboards:Condition" xmi:id="_WVg_EJ2dEeWYAI3gQKWt8Q" name="currency code!=EUR">
      <conditionPaths xmi:type="auth.storyboards:ConditionPath" xmi:id="_ewDicJ2dEeWYAI3gQKWt8Q" name="Yes" nextConditionNode="_a8tzsJ2dEeWYAI3gQKWt8Q"/>
      <conditionPaths xmi:type="auth.storyboards:ConditionPath" xmi:id="_gEPuMJ2dEeWYAI3gQKWt8Q" name="No" nextConditionNode="_yvtmsJ0MEeWQyO_X4wdW0g"/>
    </storyboardconditions>
    <storyboardstartnode xmi:type="auth.storyboards:StartNode" xmi:id="_yIX54J0MEeWQyO_X4wdW0g" firstNode="_zQ8rgJ0MEeWQyO_X4wdW0g"/>
    <storyboardendnode xmi:type="auth.storyboards:EndNode" xmi:id="_yvtmsJ0MEeWQyO_X4wdW0g"/>
  </auth.storyboards:StoryboardDiagram>
  <notation:Diagram xmi:id="_uW-E0J0MEeWQyO_X4wdW0g" type="Storyboards" element="_uSWqkJ0MEeWQyO_X4wdW0g" name="BookDemo.sbd" measurementUnit="Pixel">
    <children xmi:type="notation:Node" xmi:id="_yMZeQJ0MEeWQyO_X4wdW0g" type="2007" element="_yIX54J0MEeWQyO_X4wdW0g">
      <children xmi:type="notation:DecorationNode" xmi:id="_yMjPQJ0MEeWQyO_X4wdW0g" type="5006"/>
      <styles xmi:type="notation:DescriptionStyle" xmi:id="_yMZeQZ0MEeWQyO_X4wdW0g"/>
      <styles xmi:type="notation:FontStyle" xmi:id="_yMZeQp0MEeWQyO_X4wdW0g"/>
      <layoutConstraint xmi:type="notation:Bounds" xmi:id="_yMZeQ50MEeWQyO_X4wdW0g" x="612" y="24"/>
    </children>
    <children xmi:type="notation:Node" xmi:id="_yxDqgJ0MEeWQyO_X4wdW0g" type="2009" element="_yvtmsJ0MEeWQyO_X4wdW0g">
      <styles xmi:type="notation:DescriptionStyle" xmi:id="_yxDqgZ0MEeWQyO_X4wdW0g"/>
      <styles xmi:type="notation:FontStyle" xmi:id="_yxDqgp0MEeWQyO_X4wdW0g"/>
      <styles xmi:type="notation:LineStyle" xmi:id="_yxDqg50MEeWQyO_X4wdW0g"/>
      <layoutConstraint xmi:type="notation:Bounds" xmi:id="_yxDqhJ0MEeWQyO_X4wdW0g" x="624" y="372"/>
    </children>
    <children xmi:type="notation:Shape" xmi:id="_zRF1cJ0MEeWQyO_X4wdW0g" type="2006" element="_zQ8rgJ0MEeWQyO_X4wdW0g">
      <children xmi:type="notation:DecorationNode" xmi:id="_zRF1cp0MEeWQyO_X4wdW0g" type="5005"/>
      <layoutConstraint xmi:type="notation:Bounds" xmi:id="_zRF1cZ0MEeWQyO_X4wdW0g" x="576" y="96"/>
    </children>
    <children xmi:type="notation:Node" xmi:id="_WWHcAJ2dEeWYAI3gQKWt8Q" type="2010" element="_WVg_EJ2dEeWYAI3gQKWt8Q">
      <children xmi:type="notation:DecorationNode" xmi:id="_WWHcBZ2dEeWYAI3gQKWt8Q" type="5008"/>
      <styles xmi:type="notation:DescriptionStyle" xmi:id="_WWHcAZ2dEeWYAI3gQKWt8Q"/>
      <styles xmi:type="notation:FontStyle" xmi:id="_WWHcAp2dEeWYAI3gQKWt8Q"/>
      <styles xmi:type="notation:LineStyle" xmi:id="_WWHcA52dEeWYAI3gQKWt8Q"/>
      <layoutConstraint xmi:type="notation:Bounds" xmi:id="_WWHcBJ2dEeWYAI3gQKWt8Q" x="564" y="180"/>
    </children>
    <children xmi:type="notation:Shape" xmi:id="_a83ksJ2dEeWYAI3gQKWt8Q" type="2006" element="_a8tzsJ2dEeWYAI3gQKWt8Q">
      <children xmi:type="notation:DecorationNode" xmi:id="_a83ksp2dEeWYAI3gQKWt8Q" type="5005"/>
      <layoutConstraint xmi:type="notation:Bounds" xmi:id="_a83ksZ2dEeWYAI3gQKWt8Q" x="564" y="276"/>
    </children>
    <styles xmi:type="notation:DiagramStyle" xmi:id="_uW-E0Z0MEeWQyO_X4wdW0g"/>
    <edges xmi:type="notation:Connector" xmi:id="_1kxIQJ0MEeWQyO_X4wdW0g" type="4004" source="_yMZeQJ0MEeWQyO_X4wdW0g" target="_zRF1cJ0MEeWQyO_X4wdW0g">
      <styles xmi:type="notation:FontStyle" xmi:id="_1kxIQZ0MEeWQyO_X4wdW0g"/>
      <element xsi:nil="true"/>
      <bendpoints xmi:type="notation:RelativeBendpoints" xmi:id="_1kxIQp0MEeWQyO_X4wdW0g" points="[-3, 10, -11, -101]$[-41, 108, -49, -3]"/>
    </edges>
    <edges xmi:type="notation:Connector" xmi:id="_eSGbIJ2dEeWYAI3gQKWt8Q" type="4006" source="_zRF1cJ0MEeWQyO_X4wdW0g" target="_WWHcAJ2dEeWYAI3gQKWt8Q">
      <styles xmi:type="notation:FontStyle" xmi:id="_eSGbIZ2dEeWYAI3gQKWt8Q"/>
      <element xsi:nil="true"/>
      <bendpoints xmi:type="notation:RelativeBendpoints" xmi:id="_eSGbIp2dEeWYAI3gQKWt8Q" points="[0, 8, 0, -50]$[1, 52, 1, -6]"/>
      <sourceAnchor xmi:type="notation:IdentityAnchor" xmi:id="_eSQMIJ2dEeWYAI3gQKWt8Q" id="(0.5757575757575758,0.8)"/>
      <targetAnchor xmi:type="notation:IdentityAnchor" xmi:id="_eSQMIZ2dEeWYAI3gQKWt8Q" id="(0.518796992481203,0.15)"/>
    </edges>
    <edges xmi:type="notation:Connector" xmi:id="_ewNTcJ2dEeWYAI3gQKWt8Q" type="4001" element="_ewDicJ2dEeWYAI3gQKWt8Q" source="_WWHcAJ2dEeWYAI3gQKWt8Q" target="_a83ksJ2dEeWYAI3gQKWt8Q">
      <children xmi:type="notation:DecorationNode" xmi:id="_ewNTc52dEeWYAI3gQKWt8Q" type="6001">
        <layoutConstraint xmi:type="notation:Location" xmi:id="_ewNTdJ2dEeWYAI3gQKWt8Q" y="40"/>
      </children>
      <styles xmi:type="notation:FontStyle" xmi:id="_ewNTcZ2dEeWYAI3gQKWt8Q"/>
      <bendpoints xmi:type="notation:RelativeBendpoints" xmi:id="_ewNTcp2dEeWYAI3gQKWt8Q" points="[1, 6, 0, -62]$[1, 62, 0, -6]"/>
      <sourceAnchor xmi:type="notation:IdentityAnchor" xmi:id="_exZmQJ2dEeWYAI3gQKWt8Q" id="(0.518796992481203,0.85)"/>
      <targetAnchor xmi:type="notation:IdentityAnchor" xmi:id="_exZmQZ2dEeWYAI3gQKWt8Q" id="(0.5147058823529411,0.15)"/>
    </edges>
    <edges xmi:type="notation:Connector" xmi:id="_gEPuMZ2dEeWYAI3gQKWt8Q" type="4001" element="_gEPuMJ2dEeWYAI3gQKWt8Q" source="_WWHcAJ2dEeWYAI3gQKWt8Q" target="_yxDqgJ0MEeWQyO_X4wdW0g">
      <children xmi:type="notation:DecorationNode" xmi:id="_gEPuNJ2dEeWYAI3gQKWt8Q" type="6001">
        <layoutConstraint xmi:type="notation:Location" xmi:id="_gEPuNZ2dEeWYAI3gQKWt8Q" y="40"/>
      </children>
      <styles xmi:type="notation:FontStyle" xmi:id="_gEPuMp2dEeWYAI3gQKWt8Q"/>
      <bendpoints xmi:type="notation:RelativeBendpoints" xmi:id="_gEPuM52dEeWYAI3gQKWt8Q" points="[6, 0, 41, -174]$[183, 0, 218, -174]$[-25, 166, 10, -8]"/>
      <sourceAnchor xmi:type="notation:IdentityAnchor" xmi:id="_gEZfMJ2dEeWYAI3gQKWt8Q" id="(0.7894736842105263,0.7)"/>
    </edges>
    <edges xmi:type="notation:Connector" xmi:id="_hk9TAJ2dEeWYAI3gQKWt8Q" type="4006" source="_a83ksJ2dEeWYAI3gQKWt8Q" target="_yxDqgJ0MEeWQyO_X4wdW0g">
      <styles xmi:type="notation:FontStyle" xmi:id="_hk9TAZ2dEeWYAI3gQKWt8Q"/>
      <element xsi:nil="true"/>
      <bendpoints xmi:type="notation:RelativeBendpoints" xmi:id="_hk9TAp2dEeWYAI3gQKWt8Q" points="[-5, 8, -3, -66]$[-5, 64, -3, -10]"/>
      <sourceAnchor xmi:type="notation:IdentityAnchor" xmi:id="_hlHEAJ2dEeWYAI3gQKWt8Q" id="(0.5294117647058824,0.8)"/>
    </edges>
  </notation:Diagram>
</xmi:XMI>
