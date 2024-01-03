<?xml version="1.0" encoding="utf-8"?>
<body xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
 <LD>
  <inVariable localId="11" height="4" width="8" executionOrderId="1">
   <position x="36" y="28" />
   <connectionPointOut>
    <relPosition x="8" y="2" />
   </connectionPointOut>
   <expression>FALSE</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <inVariable localId="17" height="4" width="8" executionOrderId="1">
   <position x="36" y="68" />
   <connectionPointOut>
    <relPosition x="8" y="2" />
   </connectionPointOut>
   <expression>TRUE</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="2" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <inVariable localId="33" height="4" width="8" executionOrderId="1">
   <position x="36" y="8" />
   <connectionPointOut>
    <relPosition x="8" y="2" />
   </connectionPointOut>
   <expression>Answer</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="3" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <inVariable localId="12" height="4" width="8" executionOrderId="2">
   <position x="36" y="40" />
   <connectionPointOut>
    <relPosition x="8" y="2" />
   </connectionPointOut>
   <expression>int#79</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <inVariable localId="18" height="4" width="8" executionOrderId="2">
   <position x="36" y="80" />
   <connectionPointOut>
    <relPosition x="8" y="2" />
   </connectionPointOut>
   <expression>int#79</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="2" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <outVariable localId="34" height="4" width="8" executionOrderId="2">
   <position x="46" y="8" />
   <connectionPointIn>
    <relPosition x="0" y="2" />
    <connection refLocalId="33">
     <position x="46" y="10" />
     <position x="44" y="10" />
     <addData>
      <data name="connectionInformation" handleUnknown="preserve">
       <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
      </data>
     </addData>
    </connection>
   </connectionPointIn>
   <expression>Answer1</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="3" subNetworkId="0" />
    </data>
   </addData>
  </outVariable>
  <inVariable localId="13" height="4" width="8" executionOrderId="3">
   <position x="36" y="44" />
   <connectionPointOut>
    <relPosition x="8" y="2" />
   </connectionPointOut>
   <expression>Answer1</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <inVariable localId="19" height="4" width="8" executionOrderId="3">
   <position x="36" y="84" />
   <connectionPointOut>
    <relPosition x="8" y="2" />
   </connectionPointOut>
   <expression>Answer1</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="2" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <inVariable localId="15" height="4" width="8" executionOrderId="4">
   <position x="36" y="48" />
   <connectionPointOut>
    <relPosition x="8" y="2" />
   </connectionPointOut>
   <expression>strOutput</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <inVariable localId="20" height="4" width="8" executionOrderId="4">
   <position x="36" y="88" />
   <connectionPointOut>
    <relPosition x="8" y="2" />
   </connectionPointOut>
   <expression>strOutput</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="2" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <block localId="1" width="23" height="28" typeName="BUF_TO_STRING" instanceName="BUF_TO_STRING1" executionOrderId="5">
   <position x="46" y="24" />
   <inputVariables>
    <variable formalParameter="REQ">
     <connectionPointIn>
      <relPosition x="0" y="6" />
      <connection refLocalId="11">
       <position x="46" y="30" />
       <position x="44" y="30" />
       <addData>
        <data name="connectionInformation" handleUnknown="preserve">
         <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
        </data>
       </addData>
      </connection>
     </connectionPointIn>
    </variable>
    <variable formalParameter="BUF_FORMAT">
     <connectionPointIn>
      <relPosition x="0" y="10" />
     </connectionPointIn>
    </variable>
    <variable formalParameter="BUF_OFFS">
     <connectionPointIn>
      <relPosition x="0" y="14" />
     </connectionPointIn>
    </variable>
    <variable formalParameter="BUF_CNT">
     <connectionPointIn>
      <relPosition x="0" y="18" />
      <connection refLocalId="12">
       <position x="46" y="42" />
       <position x="44" y="42" />
       <addData>
        <data name="connectionInformation" handleUnknown="preserve">
         <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
        </data>
       </addData>
      </connection>
     </connectionPointIn>
    </variable>
   </inputVariables>
   <inOutVariables>
    <variable formalParameter="BUFFER">
     <connectionPointIn>
      <relPosition x="0" y="22" />
      <connection refLocalId="13">
       <position x="46" y="46" />
       <position x="44" y="46" />
       <addData>
        <data name="connectionInformation" handleUnknown="preserve">
         <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
        </data>
       </addData>
      </connection>
     </connectionPointIn>
     <connectionPointOut>
      <relPosition x="23" y="22" />
     </connectionPointOut>
    </variable>
    <variable formalParameter="DST">
     <connectionPointIn>
      <relPosition x="0" y="26" />
      <connection refLocalId="15">
       <position x="46" y="50" />
       <position x="44" y="50" />
       <addData>
        <data name="connectionInformation" handleUnknown="preserve">
         <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
        </data>
       </addData>
      </connection>
     </connectionPointIn>
     <connectionPointOut>
      <relPosition x="23" y="26" />
     </connectionPointOut>
    </variable>
   </inOutVariables>
   <outputVariables>
    <variable formalParameter="DONE">
     <connectionPointOut>
      <relPosition x="23" y="6" />
     </connectionPointOut>
    </variable>
    <variable formalParameter="ERROR">
     <connectionPointOut>
      <relPosition x="23" y="10" />
     </connectionPointOut>
    </variable>
    <variable formalParameter="STATUS">
     <connectionPointOut>
      <relPosition x="23" y="14" />
     </connectionPointOut>
    </variable>
   </outputVariables>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
    <data name="blockInformation" handleUnknown="preserve">
     <blockInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" canEditLabel="true" extensible="false" imageWidth="8" imageHeight="0" />
    </data>
    <data name="parameterInformations" handleUnknown="preserve">
     <parameterInformations xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
      <parameterInformation formalParameter="REQ" localId="2" executionOrderId="5" negatable="true" editorParameter="false" priority="1" />
      <parameterInformation formalParameter="BUF_FORMAT" localId="3" executionOrderId="5" negatable="true" editorParameter="false" priority="2" />
      <parameterInformation formalParameter="BUF_OFFS" localId="4" executionOrderId="5" editorParameter="false" priority="3" />
      <parameterInformation formalParameter="BUF_CNT" localId="5" executionOrderId="5" editorParameter="false" priority="4" />
      <parameterInformation formalParameter="DONE" localId="6" executionOrderId="5" negatable="true" editorParameter="false" priority="5" />
      <parameterInformation formalParameter="ERROR" localId="7" executionOrderId="5" negatable="true" editorParameter="false" priority="6" />
      <parameterInformation formalParameter="STATUS" localId="8" executionOrderId="5" editorParameter="false" priority="7" />
      <parameterInformation formalParameter="BUFFER" localId="9" executionOrderId="5" editorParameter="false" priority="8" />
      <parameterInformation formalParameter="DST" localId="10" executionOrderId="5" editorParameter="false" priority="9" />
     </parameterInformations>
    </data>
   </addData>
  </block>
  <block localId="21" width="23" height="28" typeName="BUF_TO_STRING" instanceName="BUF_TO_STRING1" executionOrderId="5">
   <position x="46" y="64" />
   <inputVariables>
    <variable formalParameter="REQ">
     <connectionPointIn>
      <relPosition x="0" y="6" />
      <connection refLocalId="17">
       <position x="46" y="70" />
       <position x="44" y="70" />
       <addData>
        <data name="connectionInformation" handleUnknown="preserve">
         <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
        </data>
       </addData>
      </connection>
     </connectionPointIn>
    </variable>
    <variable formalParameter="BUF_FORMAT">
     <connectionPointIn>
      <relPosition x="0" y="10" />
     </connectionPointIn>
    </variable>
    <variable formalParameter="BUF_OFFS">
     <connectionPointIn>
      <relPosition x="0" y="14" />
     </connectionPointIn>
    </variable>
    <variable formalParameter="BUF_CNT">
     <connectionPointIn>
      <relPosition x="0" y="18" />
      <connection refLocalId="18">
       <position x="46" y="82" />
       <position x="44" y="82" />
       <addData>
        <data name="connectionInformation" handleUnknown="preserve">
         <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
        </data>
       </addData>
      </connection>
     </connectionPointIn>
    </variable>
   </inputVariables>
   <inOutVariables>
    <variable formalParameter="BUFFER">
     <connectionPointIn>
      <relPosition x="0" y="22" />
      <connection refLocalId="19">
       <position x="46" y="86" />
       <position x="44" y="86" />
       <addData>
        <data name="connectionInformation" handleUnknown="preserve">
         <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
        </data>
       </addData>
      </connection>
     </connectionPointIn>
     <connectionPointOut>
      <relPosition x="23" y="22" />
     </connectionPointOut>
    </variable>
    <variable formalParameter="DST">
     <connectionPointIn>
      <relPosition x="0" y="26" />
      <connection refLocalId="20">
       <position x="46" y="90" />
       <position x="44" y="90" />
       <addData>
        <data name="connectionInformation" handleUnknown="preserve">
         <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
        </data>
       </addData>
      </connection>
     </connectionPointIn>
     <connectionPointOut>
      <relPosition x="23" y="26" />
     </connectionPointOut>
    </variable>
   </inOutVariables>
   <outputVariables>
    <variable formalParameter="DONE">
     <connectionPointOut>
      <relPosition x="23" y="6" />
     </connectionPointOut>
    </variable>
    <variable formalParameter="ERROR">
     <connectionPointOut>
      <relPosition x="23" y="10" />
     </connectionPointOut>
    </variable>
    <variable formalParameter="STATUS">
     <connectionPointOut>
      <relPosition x="23" y="14" />
     </connectionPointOut>
    </variable>
   </outputVariables>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="2" subNetworkId="0" />
    </data>
    <data name="blockInformation" handleUnknown="preserve">
     <blockInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" canEditLabel="true" extensible="false" imageWidth="8" imageHeight="0" />
    </data>
    <data name="parameterInformations" handleUnknown="preserve">
     <parameterInformations xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
      <parameterInformation formalParameter="REQ" localId="22" executionOrderId="5" negatable="true" editorParameter="false" priority="1" />
      <parameterInformation formalParameter="BUF_FORMAT" localId="23" executionOrderId="5" negatable="true" editorParameter="false" priority="2" />
      <parameterInformation formalParameter="BUF_OFFS" localId="24" executionOrderId="5" editorParameter="false" priority="3" />
      <parameterInformation formalParameter="BUF_CNT" localId="25" executionOrderId="5" editorParameter="false" priority="4" />
      <parameterInformation formalParameter="DONE" localId="26" executionOrderId="5" negatable="true" editorParameter="false" priority="5" />
      <parameterInformation formalParameter="ERROR" localId="27" executionOrderId="5" negatable="true" editorParameter="false" priority="6" />
      <parameterInformation formalParameter="STATUS" localId="28" executionOrderId="5" editorParameter="false" priority="7" />
      <parameterInformation formalParameter="BUFFER" localId="29" executionOrderId="5" editorParameter="false" priority="8" />
      <parameterInformation formalParameter="DST" localId="30" executionOrderId="5" editorParameter="false" priority="9" />
     </parameterInformations>
    </data>
   </addData>
  </block>
  <outVariable localId="14" height="4" width="8" executionOrderId="6">
   <position x="71" y="44" />
   <connectionPointIn>
    <relPosition x="0" y="2" />
    <connection refLocalId="1" formalParameter="BUFFER">
     <position x="71" y="46" />
     <position x="69" y="46" />
     <addData>
      <data name="connectionInformation" handleUnknown="preserve">
       <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
      </data>
     </addData>
    </connection>
   </connectionPointIn>
   <expression>Answer1</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </outVariable>
  <outVariable localId="31" height="4" width="8" executionOrderId="6">
   <position x="71" y="84" />
   <connectionPointIn>
    <relPosition x="0" y="2" />
    <connection refLocalId="21" formalParameter="BUFFER">
     <position x="71" y="86" />
     <position x="69" y="86" />
     <addData>
      <data name="connectionInformation" handleUnknown="preserve">
       <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
      </data>
     </addData>
    </connection>
   </connectionPointIn>
   <expression>Answer1</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="2" subNetworkId="0" />
    </data>
   </addData>
  </outVariable>
  <outVariable localId="16" height="4" width="8" executionOrderId="7">
   <position x="71" y="48" />
   <connectionPointIn>
    <relPosition x="0" y="2" />
    <connection refLocalId="1" formalParameter="DST">
     <position x="71" y="50" />
     <position x="69" y="50" />
     <addData>
      <data name="connectionInformation" handleUnknown="preserve">
       <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
      </data>
     </addData>
    </connection>
   </connectionPointIn>
   <expression>strOutput</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </outVariable>
  <outVariable localId="32" height="4" width="8" executionOrderId="7">
   <position x="71" y="88" />
   <connectionPointIn>
    <relPosition x="0" y="2" />
    <connection refLocalId="21" formalParameter="DST">
     <position x="71" y="90" />
     <position x="69" y="90" />
     <addData>
      <data name="connectionInformation" handleUnknown="preserve">
       <connectionInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" useAutoConnector="false" useUserConnector="false" invisible="false" wasExplicitFeedback="false" />
      </data>
     </addData>
    </connection>
   </connectionPointIn>
   <expression>strOutput</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" networkId="2" subNetworkId="0" />
    </data>
   </addData>
  </outVariable>
 </LD>
 <addData>
  <data name="docInformation" handleUnknown="preserve">
   <docInformation xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" gridActive="true" pageWidth="-1">
    <version>2.4.0.266.0</version>
    <multilineOptions maximumContactWidth="13" minimumContactWidth="13" maximumContactLines="1" contactEllipse="true" maximumInstanceNameWidth="2147483647" maximumInstanceNameLines="1" instanceNameEllipse="false" maximumVariableWidth="2147483647" variableEllipse="false" />
   </docInformation>
  </data>
 </addData>
</body>