Class {
	#name : 'PNRequirementsDuplicate',
	#superclass : 'Object',
	#classInstVars : [
		'file'
	],
	#category : 'PassageNiveau-requirements',
	#package : 'PassageNiveau',
	#tag : 'requirements'
}

{ #category : 'examples' }
PNRequirementsDuplicate class >> capellaFileContent [

	^ '<?xml version="1.0" encoding="UTF-8"?>

<!--Capella_Version_7.0.1-->
<org.polarsys.capella.core.data.capellamodeller:Project xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:libraries="http://www.polarsys.org/capella/common/libraries/7.0.0"
    xmlns:org.polarsys.capella.core.data.capellacommon="http://www.polarsys.org/capella/core/common/7.0.0"
    xmlns:org.polarsys.capella.core.data.capellacore="http://www.polarsys.org/capella/core/core/7.0.0"
    xmlns:org.polarsys.capella.core.data.capellamodeller="http://www.polarsys.org/capella/core/modeller/7.0.0"
    xmlns:org.polarsys.capella.core.data.cs="http://www.polarsys.org/capella/core/cs/7.0.0"
    xmlns:org.polarsys.capella.core.data.ctx="http://www.polarsys.org/capella/core/ctx/7.0.0"
    xmlns:org.polarsys.capella.core.data.epbs="http://www.polarsys.org/capella/core/epbs/7.0.0"
    xmlns:org.polarsys.capella.core.data.fa="http://www.polarsys.org/capella/core/fa/7.0.0"
    xmlns:org.polarsys.capella.core.data.information="http://www.polarsys.org/capella/core/information/7.0.0"
    xmlns:org.polarsys.capella.core.data.information.datatype="http://www.polarsys.org/capella/core/information/datatype/7.0.0"
    xmlns:org.polarsys.capella.core.data.information.datavalue="http://www.polarsys.org/capella/core/information/datavalue/7.0.0"
    xmlns:org.polarsys.capella.core.data.interaction="http://www.polarsys.org/capella/core/interaction/7.0.0"
    xmlns:org.polarsys.capella.core.data.la="http://www.polarsys.org/capella/core/la/7.0.0"
    xmlns:org.polarsys.capella.core.data.oa="http://www.polarsys.org/capella/core/oa/7.0.0"
    xmlns:org.polarsys.capella.core.data.pa="http://www.polarsys.org/capella/core/pa/7.0.0"
    xmlns:org.polarsys.capella.core.data.pa.deployment="http://www.polarsys.org/capella/core/pa/deployment/7.0.0"
    xmlns:re="http://www.polarsys.org/capella/common/re/7.0.0" id="4c8b577c-14c7-4e66-9337-c13272537eb5"
    name="Passage a niveau">
  <ownedExtensions xsi:type="libraries:ModelInformation" id="993e54c5-3947-451e-bc84-dfaa59424883"/>
  <ownedEnumerationPropertyTypes xsi:type="org.polarsys.capella.core.data.capellacore:EnumerationPropertyType"
      id="0bb8c17e-9c32-46f4-989d-1f2cbe575981" name="ProgressStatus">
    <ownedLiterals xsi:type="org.polarsys.capella.core.data.capellacore:EnumerationPropertyLiteral"
        id="fd7a4972-e97b-46dd-894d-42171f1874af" name="DRAFT"/>
    <ownedLiterals xsi:type="org.polarsys.capella.core.data.capellacore:EnumerationPropertyLiteral"
        id="b9f1694b-8d17-4581-97b9-0bcc2e971df0" name="TO_BE_REVIEWED"/>
    <ownedLiterals xsi:type="org.polarsys.capella.core.data.capellacore:EnumerationPropertyLiteral"
        id="1bbf8070-dff5-43af-9636-62a27843f929" name="TO_BE_DISCUSSED"/>
    <ownedLiterals xsi:type="org.polarsys.capella.core.data.capellacore:EnumerationPropertyLiteral"
        id="8c38515c-26d2-4694-9eef-9ffec871d980" name="REWORK_NECESSARY"/>
    <ownedLiterals xsi:type="org.polarsys.capella.core.data.capellacore:EnumerationPropertyLiteral"
        id="433b3b30-8b47-41f6-9d8c-1d06a3c280ba" name="UNDER_REWORK"/>
    <ownedLiterals xsi:type="org.polarsys.capella.core.data.capellacore:EnumerationPropertyLiteral"
        id="87f3bc97-d05f-465e-b125-34122e0c4f9d" name="REVIEWED_OK"/>
  </ownedEnumerationPropertyTypes>
  <keyValuePairs xsi:type="org.polarsys.capella.core.data.capellacore:KeyValue" id="d39ed448-8c71-434e-be94-cfdce7293fc5"
      key="projectApproach" value="SingletonComponents"/>
  <ownedModelRoots xsi:type="org.polarsys.capella.core.data.capellamodeller:SystemEngineering"
      id="29c18aa8-3d9d-491d-b554-f836e952b81c" name="Passage a niveau" description="">
    <ownedArchitectures xsi:type="org.polarsys.capella.core.data.ctx:SystemAnalysis"
        id="5b7dc2fa-baeb-4b3d-87d2-bdc8ef699cdb" name="System Analysis">
      <ownedFunctionPkg xsi:type="org.polarsys.capella.core.data.ctx:SystemFunctionPkg"
          id="4163a291-be6f-4d36-be07-2c66bc15e7f1" name="System Functions">
        <ownedCategories xsi:type="org.polarsys.capella.core.data.fa:ExchangeCategory"
            id="33822d9e-723e-4bf1-b50c-7c4d028bfb95" name="Statut des véhicules"
            exchanges="#88de66c4-875a-47b3-84c8-75e9592777d6 #db76b1c5-9ef1-4f48-a007-20fc8ef903a5 #55e467aa-939b-493a-89c8-9a80b40f8a8b #9ddc7d46-775c-44c3-829a-d1715a47273f #1bb6bb52-5b61-4397-84f3-eb444297c3dc #e985c86a-a9da-4099-8c40-220eb1f8fa4d"/>
        <ownedCategories xsi:type="org.polarsys.capella.core.data.fa:ExchangeCategory"
            id="d8d93630-541d-49d1-ae98-22176d64ddcf" name="Consignes aux véhicules"
            exchanges="#aecee461-f9b2-43f6-b7f5-23f3bb40eb3d #2f3e16b5-9c29-40a2-aaad-0175954d52e7"/>
        <ownedCategories xsi:type="org.polarsys.capella.core.data.fa:ExchangeCategory"
            id="c92d6cd5-812d-4f61-820c-9b8e6d7c9a26" name="Consignes de gestion du trafic routier"
            exchanges="#4dfc75b2-23c9-4b6d-ae09-0f2032f1be1e #cb006dd6-6ae6-423c-a684-40ec93d0c1cb #94c94fb2-ad0f-4758-b4fc-5f61f5e4d2c7 #de7d1d21-0537-41a5-acee-8d6bf057958d"/>
        <ownedCategories xsi:type="org.polarsys.capella.core.data.fa:ExchangeCategory"
            id="43f38388-194a-46f5-9b73-03ca018372e1" name="Statut du trafic routier"
            exchanges="#ac6d0f53-7a60-43e3-95c0-446753a2ae7f #53dcd518-abf1-4cb7-956c-687fb2b4a3ab"/>
        <ownedCategories xsi:type="org.polarsys.capella.core.data.fa:ExchangeCategory"
            id="e8d5a27b-2db9-4da4-a44a-243da55cc768" name="Consignes au train en partance"
            exchanges="#f1b96c69-4b60-4d9e-97c0-db56e45a0f98 #fcb06ea3-07ed-42aa-8fa1-d3e9e609aa0e"/>
        <ownedCategories xsi:type="org.polarsys.capella.core.data.fa:ExchangeCategory"
            id="0cf04495-f28a-40e7-9677-148416707a20" name="Statut du train en partance"
            exchanges="#1a284f4c-e169-4d5f-94ae-f37e7cd9e14e"/>
        <ownedCategories xsi:type="org.polarsys.capella.core.data.fa:ExchangeCategory"
            id="ef765ff0-453a-4438-8fce-9e40aa73586c" name="Consignes au train arrivant"
            exchanges="#63bc340c-2266-4cd9-b311-be71ee531ab5 #4b76d307-7773-47fe-be89-e6c439e3dd76"/>
        <ownedCategories xsi:type="org.polarsys.capella.core.data.fa:ExchangeCategory"
            id="98c578a4-8ffa-4f2f-a5ac-120e330b6909" name="Statut du train arrivant"
            exchanges="#137f21b6-e7cc-4a94-b305-9061f70a7a98 #bbe1ac75-b9a6-4045-bdb5-81def92d0737"/>
        <ownedCategories xsi:type="org.polarsys.capella.core.data.fa:ExchangeCategory"
            id="89e66bb1-959f-4a9b-a14b-a4c290cb3a08" name="Informations trains" exchanges="#54522c92-70ed-4342-ad53-e59491f698b1 #3ba4bfbc-170a-4b09-88c4-4a931b1f7a72 #0812acad-b57c-4e90-a572-085854a909bd"/>
        <ownedCategories xsi:type="org.polarsys.capella.core.data.fa:ExchangeCategory"
            id="32805671-f574-467b-8f3d-8198ffb5a51b" name="Etat de fonctionnement"
            exchanges="#8bd24e51-1f2e-4603-aac8-dcd92b97d7a0 #27691bb5-b722-4d9f-87c5-d386fe694079 #33541e0a-05d6-4f5e-9c58-cf6dd53eb83b"/>
        <ownedCategories xsi:type="org.polarsys.capella.core.data.fa:ExchangeCategory"
            id="1e7c2c8a-fbd5-486d-9e38-4e804783cdd4" name="Commandes urgence" exchanges="#c14089fb-a49a-4a93-9824-b7eabf8a4ac0 #cc2861a0-e83e-4086-81a5-67d1873830be"/>
        <ownedSystemFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
            id="81b458a1-84ec-4d85-96a3-7e83d8bab92d" name="Root System Function">
          <ownedFunctionalChains xsi:type="org.polarsys.capella.core.data.fa:FunctionalChain"
              id="9e84566b-e2ff-47f9-8f95-42603358cb4b" name="Arrêt du trafic routier">
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementLink"
                id="68e28ffc-1f8a-49ab-9e2d-06ec427c00cb" involved="#55e467aa-939b-493a-89c8-9a80b40f8a8b"
                source="#35b9583b-2766-447f-91bb-f6ec5a87d81c" target="#566fdb26-5265-4590-972c-d01590d720f9"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementLink"
                id="6a41ad80-d2b7-4102-badd-967377554b52" involved="#4dfc75b2-23c9-4b6d-ae09-0f2032f1be1e"
                source="#566fdb26-5265-4590-972c-d01590d720f9" target="#3f96de8d-92f4-4889-8224-0c1f74718d7e"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementLink"
                id="1a8fe3a4-be63-4371-b468-e69b37ac8dbd" involved="#aecee461-f9b2-43f6-b7f5-23f3bb40eb3d"
                source="#3f96de8d-92f4-4889-8224-0c1f74718d7e" target="#5d020ec1-1c5b-4e8c-b485-a7cea38ac5ea"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementLink"
                id="24f979f5-7fa3-4e4a-91bc-43e32a894122" involved="#9ddc7d46-775c-44c3-829a-d1715a47273f"
                source="#5d020ec1-1c5b-4e8c-b485-a7cea38ac5ea" target="#3ac749cb-4ad2-49e7-b51e-528a52384dc7"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="3f96de8d-92f4-4889-8224-0c1f74718d7e" involved="#4827a14b-4396-4ee3-9734-8ae3c0db294b"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="3ac749cb-4ad2-49e7-b51e-528a52384dc7" involved="#54b14102-3ad6-4a2e-bfe3-90c76680f870"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="566fdb26-5265-4590-972c-d01590d720f9" involved="#54b14102-3ad6-4a2e-bfe3-90c76680f870"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="5d020ec1-1c5b-4e8c-b485-a7cea38ac5ea" involved="#03327669-186a-4e17-8b02-2b9170d66d53"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="35b9583b-2766-447f-91bb-f6ec5a87d81c" involved="#817a5ef2-28cd-4fb4-944f-15300d47014b"/>
            <ownedFunctionalChainRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainRealization"
                id="4d3400c2-e93d-4ac9-bb76-18c2c2865545" targetElement="#10a933c2-d5f3-4350-b908-09c6d793f689"
                sourceElement="#9e84566b-e2ff-47f9-8f95-42603358cb4b"/>
          </ownedFunctionalChains>
          <ownedFunctionalChains xsi:type="org.polarsys.capella.core.data.fa:FunctionalChain"
              id="efe88080-59f0-4f21-92f9-d6b1dd313b7b" name="Ouverture du trafic routier">
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementLink"
                id="95f2762a-b2f6-4c0f-be05-de61fb71f2a5" involved="#cb006dd6-6ae6-423c-a684-40ec93d0c1cb"
                source="#833b0015-8145-4ca3-a6df-b0899c87493e" target="#f840d7f6-1265-4d97-b5a3-42a50c86b54e"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementLink"
                id="8e86d721-785a-4ecf-826b-fdccef75a598" involved="#2f3e16b5-9c29-40a2-aaad-0175954d52e7"
                source="#f840d7f6-1265-4d97-b5a3-42a50c86b54e" target="#7b90a3e2-06d4-477e-b162-de1cd8e48f47"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="7b90a3e2-06d4-477e-b162-de1cd8e48f47" involved="#842ef64e-a2a8-4f33-bfcc-f5748dcc4bff"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="f840d7f6-1265-4d97-b5a3-42a50c86b54e" involved="#610efa2d-22f1-4d5c-a058-0287baa9af70"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="833b0015-8145-4ca3-a6df-b0899c87493e" involved="#54b14102-3ad6-4a2e-bfe3-90c76680f870"/>
            <ownedFunctionalChainRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainRealization"
                id="083adc2a-5fd1-46ba-becb-10d2d8af460e" targetElement="#10a933c2-d5f3-4350-b908-09c6d793f689"
                sourceElement="#efe88080-59f0-4f21-92f9-d6b1dd313b7b"/>
          </ownedFunctionalChains>
          <ownedFunctionalChains xsi:type="org.polarsys.capella.core.data.fa:FunctionalChain"
              id="6a99bfd6-2a58-4fba-a253-fbad87474309" name="Détection de présence véhicule sur le passage">
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementLink"
                id="fa25be04-bc7d-4a6c-b20f-25c46a387190" involved="#db76b1c5-9ef1-4f48-a007-20fc8ef903a5"
                source="#c41e74b9-fc29-4e51-bf25-9150efeb85f2" target="#e2331873-1619-41a3-9f7e-1fdad5673f07"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementLink"
                id="5b942ae4-bb14-4e46-bb24-61dfc51b24c1" involved="#88de66c4-875a-47b3-84c8-75e9592777d6"
                source="#66025ece-8c57-4b79-950a-fc6ca03a60ff" target="#2be2aa82-8320-47b9-b011-d199b051a4cc"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementLink"
                id="2709612b-783f-4b19-920d-7805ff45d309" involved="#ac6d0f53-7a60-43e3-95c0-446753a2ae7f"
                source="#e2331873-1619-41a3-9f7e-1fdad5673f07" target="#2de54410-19b5-4e7d-a1f7-19b3d47ba3e0"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementLink"
                id="7613d079-6197-48a3-b0e2-81ecad273307" involved="#ac6d0f53-7a60-43e3-95c0-446753a2ae7f"
                source="#2be2aa82-8320-47b9-b011-d199b051a4cc" target="#2de54410-19b5-4e7d-a1f7-19b3d47ba3e0"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="2be2aa82-8320-47b9-b011-d199b051a4cc" involved="#126ece23-ef3b-4fe0-bec4-b3dbd903bfa6"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="e2331873-1619-41a3-9f7e-1fdad5673f07" involved="#126ece23-ef3b-4fe0-bec4-b3dbd903bfa6"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="2de54410-19b5-4e7d-a1f7-19b3d47ba3e0" involved="#54b14102-3ad6-4a2e-bfe3-90c76680f870"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="66025ece-8c57-4b79-950a-fc6ca03a60ff" involved="#842ef64e-a2a8-4f33-bfcc-f5748dcc4bff"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="c41e74b9-fc29-4e51-bf25-9150efeb85f2" involved="#842ef64e-a2a8-4f33-bfcc-f5748dcc4bff"/>
          </ownedFunctionalChains>
          <ownedFunctionalChains xsi:type="org.polarsys.capella.core.data.fa:FunctionalChain"
              id="39f5b423-5955-49e3-a1d7-9bc8b81d49e1" name="Blocage du train au départ">
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementLink"
                id="4105f826-ec70-4a4d-8b12-1e09d79326a2" involved="#54522c92-70ed-4342-ad53-e59491f698b1"
                source="#e12380e5-8302-495c-9538-cc7f2764b7bd" target="#54d70832-227f-4f8c-bd0a-fc0a54db13f9"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementLink"
                id="f339df85-b60d-40e8-b1d3-f7decb6aebc8" involved="#347b1622-4e1d-4513-9434-a843f9eec92e"
                source="#54d70832-227f-4f8c-bd0a-fc0a54db13f9" target="#f21a977f-d301-40e4-ae0b-0e199dd041e6"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementLink"
                id="ff8ca727-1791-4690-86af-248020816a1c" involved="#f1b96c69-4b60-4d9e-97c0-db56e45a0f98"
                source="#f21a977f-d301-40e4-ae0b-0e199dd041e6" target="#b865d553-cb65-4856-80d5-25ee8d8bb662"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="e12380e5-8302-495c-9538-cc7f2764b7bd" involved="#3d6e5811-132e-4366-be8d-3c781083e703"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="54d70832-227f-4f8c-bd0a-fc0a54db13f9" involved="#54b14102-3ad6-4a2e-bfe3-90c76680f870"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="b865d553-cb65-4856-80d5-25ee8d8bb662" involved="#f845f6d1-b10a-4cb2-b8ad-4cf46da4b0eb"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="f21a977f-d301-40e4-ae0b-0e199dd041e6" involved="#fa59b83b-f039-44a7-98f6-a3bb04639b20"/>
            <ownedFunctionalChainRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainRealization"
                id="d60c13cb-6dad-4c8c-89c2-f871409e4c7f" targetElement="#de95811c-9374-4f2f-bf89-143b6c790cbe"
                sourceElement="#39f5b423-5955-49e3-a1d7-9bc8b81d49e1"/>
            <ownedFunctionalChainRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainRealization"
                id="8e831e7e-5f95-41ee-8e03-64474ffca1de" targetElement="#1b10b7a9-ead0-48f6-a903-d6748c8e7ca2"
                sourceElement="#39f5b423-5955-49e3-a1d7-9bc8b81d49e1"/>
          </ownedFunctionalChains>
          <ownedFunctionalChains xsi:type="org.polarsys.capella.core.data.fa:FunctionalChain"
              id="3c43ab9f-d00d-4f1c-a588-f5ccb18ce101" name="Déblocage du train au départ">
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementLink"
                id="9e8860e3-b2f7-43ef-a615-9a6d8552c4b7" involved="#61e16db8-cd53-47df-9654-76ff0019000a"
                source="#06d10610-2e55-4599-be3d-96b1fb9fbd0b" target="#d7ba6023-a47f-486c-9bd9-0abe3096563d"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementLink"
                id="fe90b07b-65d7-4ec9-a9fe-53fccf6f8d26" involved="#fcb06ea3-07ed-42aa-8fa1-d3e9e609aa0e"
                source="#d7ba6023-a47f-486c-9bd9-0abe3096563d" target="#7c5e3b52-2df9-4763-a065-d79c0a4888b0"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="7c5e3b52-2df9-4763-a065-d79c0a4888b0" involved="#cc600fc2-e6af-486c-9346-69b49cc8cb21"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="d7ba6023-a47f-486c-9bd9-0abe3096563d" involved="#cd468610-1bc9-46b8-b111-aef755fcf780"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="06d10610-2e55-4599-be3d-96b1fb9fbd0b" involved="#54b14102-3ad6-4a2e-bfe3-90c76680f870"/>
            <ownedFunctionalChainRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainRealization"
                id="1dcf50d5-05b6-4d9e-a8f6-99206abc1fea" targetElement="#de95811c-9374-4f2f-bf89-143b6c790cbe"
                sourceElement="#3c43ab9f-d00d-4f1c-a588-f5ccb18ce101"/>
          </ownedFunctionalChains>
          <ownedFunctionalChains xsi:type="org.polarsys.capella.core.data.fa:FunctionalChain"
              id="bb356708-cda9-4680-9167-e0bf8dcc33a1" name="Détection de passage du train au départ">
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementLink"
                id="1cc248e4-fb15-487c-8076-1a03d20518fd" involved="#1a284f4c-e169-4d5f-94ae-f37e7cd9e14e"
                source="#f8a01730-e714-4116-801c-fe2bb17a4dd2" target="#e2f86763-8bea-4208-a90a-af850ce3b2e8"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementLink"
                id="74245255-de65-4e83-9b88-67d02770ccfe" involved="#c0893db7-2ae2-4fc5-b7bf-11c68b14ee48"
                source="#e2f86763-8bea-4208-a90a-af850ce3b2e8" target="#8a532dea-c80d-401e-9647-0998ebef38e8"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="f8a01730-e714-4116-801c-fe2bb17a4dd2" involved="#cc600fc2-e6af-486c-9346-69b49cc8cb21"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="8a532dea-c80d-401e-9647-0998ebef38e8" involved="#54b14102-3ad6-4a2e-bfe3-90c76680f870"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="e2f86763-8bea-4208-a90a-af850ce3b2e8" involved="#d35e2a23-cd82-487f-a8e9-ca58eca0e547"/>
            <ownedFunctionalChainRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainRealization"
                id="3c27d0d6-a3bf-4de7-bdcb-6bc5da33375b" targetElement="#10a933c2-d5f3-4350-b908-09c6d793f689"
                sourceElement="#bb356708-cda9-4680-9167-e0bf8dcc33a1"/>
          </ownedFunctionalChains>
          <ownedFunctionalChains xsi:type="org.polarsys.capella.core.data.fa:FunctionalChain"
              id="11447c01-5408-4a24-9c9f-1626d0193e8a" name="Procédure de départ - assemblage">
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainReference"
                id="72410a68-7d54-4755-a45b-aceb3bb00538" involved="#9e84566b-e2ff-47f9-8f95-42603358cb4b">
              <ownedConstraints xsi:type="org.polarsys.capella.core.data.capellacore:Constraint"
                  id="ef7ccd65-22ba-4396-90cd-3ed3bd13f881" name="Supervise la procédure de départ"
                  constrainedElements="#e52e3045-a960-4caf-b962-a1fb06d5b0eb #e487d380-d547-4b5b-9d7c-2eac77a11fb8 #72410a68-7d54-4755-a45b-aceb3bb00538">
                <ownedSpecification xsi:type="org.polarsys.capella.core.data.information.datavalue:OpaqueExpression"
                    id="2afa8f6d-a4bb-4b03-9cd6-21e160ee4b71">
                  <bodies></bodies>
                  <languages>capella:linkedText</languages>
                </ownedSpecification>
              </ownedConstraints>
              <ownedConstraints xsi:type="org.polarsys.capella.core.data.capellacore:Constraint"
                  id="7db4cc95-5dd7-4522-a29b-4a00b21793d8" name="Supervise la procédure de départ"
                  constrainedElements="#72410a68-7d54-4755-a45b-aceb3bb00538 #1ebdf81d-ecb3-4e16-a49c-beabf52c047f">
                <ownedSpecification xsi:type="org.polarsys.capella.core.data.information.datavalue:OpaqueExpression"
                    id="90b863c6-1fc6-4c5b-9990-6a1316bf800d">
                  <bodies></bodies>
                  <languages>capella:linkedText</languages>
                </ownedSpecification>
              </ownedConstraints>
            </ownedFunctionalChainInvolvements>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainReference"
                id="e52e3045-a960-4caf-b962-a1fb06d5b0eb" involved="#39f5b423-5955-49e3-a1d7-9bc8b81d49e1"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainReference"
                id="1ebdf81d-ecb3-4e16-a49c-beabf52c047f" involved="#3c43ab9f-d00d-4f1c-a588-f5ccb18ce101"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainReference"
                id="24812d4f-899b-4d63-a77c-75ec8136c5b7" involved="#bb356708-cda9-4680-9167-e0bf8dcc33a1">
              <ownedConstraints xsi:type="org.polarsys.capella.core.data.capellacore:Constraint"
                  id="e7a62d19-28fd-45c8-995e-8061c3595290" name="Supervise la procédure de départ"
                  constrainedElements="#24812d4f-899b-4d63-a77c-75ec8136c5b7 #1ebdf81d-ecb3-4e16-a49c-beabf52c047f">
                <ownedSpecification xsi:type="org.polarsys.capella.core.data.information.datavalue:OpaqueExpression"
                    id="bb7aeab3-6c88-4694-9095-9d7db27e9eae">
                  <bodies></bodies>
                  <languages>capella:linkedText</languages>
                </ownedSpecification>
              </ownedConstraints>
              <ownedConstraints xsi:type="org.polarsys.capella.core.data.capellacore:Constraint"
                  id="59215840-5b9b-46d8-9f4a-e67ca1b291d9" name="Supervise la procédure de départ"
                  constrainedElements="#24812d4f-899b-4d63-a77c-75ec8136c5b7 #34bf7865-9e54-4af0-ad17-bf24180fe93a">
                <ownedSpecification xsi:type="org.polarsys.capella.core.data.information.datavalue:OpaqueExpression"
                    id="23c10acb-228c-411e-ba3d-a64c5a68438c">
                  <bodies></bodies>
                  <languages>capella:linkedText</languages>
                </ownedSpecification>
              </ownedConstraints>
            </ownedFunctionalChainInvolvements>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainReference"
                id="e487d380-d547-4b5b-9d7c-2eac77a11fb8" involved="#6a99bfd6-2a58-4fba-a253-fbad87474309"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainReference"
                id="34bf7865-9e54-4af0-ad17-bf24180fe93a" involved="#efe88080-59f0-4f21-92f9-d6b1dd313b7b"/>
          </ownedFunctionalChains>
          <ownedFunctionalChains xsi:type="org.polarsys.capella.core.data.fa:FunctionalChain"
              id="5c53fd55-8413-4124-99a7-91c61e92d0bc" name="Procédure de départ - in extenso">
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementLink"
                id="709ea14c-7311-44cb-ad07-d8941381035f" involved="#db76b1c5-9ef1-4f48-a007-20fc8ef903a5"
                source="#3911f10b-b97f-4597-9fff-39111ae04169" target="#781c2ff2-e0b7-416a-849d-5c300fb2f197"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementLink"
                id="7cbf7de4-c181-42f2-ab86-688e5929d720" involved="#ac6d0f53-7a60-43e3-95c0-446753a2ae7f"
                source="#781c2ff2-e0b7-416a-849d-5c300fb2f197" target="#5b30966e-6520-42d2-8e60-f02219407cfa"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementLink"
                id="b1b82890-a098-418e-9d9a-5fb0d43d7035" involved="#54522c92-70ed-4342-ad53-e59491f698b1"
                source="#5a61a6bc-f5b7-4bac-ae8c-d46340e6eb7b" target="#5b30966e-6520-42d2-8e60-f02219407cfa"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementLink"
                id="fe3b6ce9-321f-4b09-a233-9342ec1f8251" involved="#347b1622-4e1d-4513-9434-a843f9eec92e"
                source="#5b30966e-6520-42d2-8e60-f02219407cfa" target="#96e182f4-0521-4a45-85c2-385c2b46e838"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementLink"
                id="ca33cc40-cc39-4734-b2aa-a6a21e9c109b" involved="#f1b96c69-4b60-4d9e-97c0-db56e45a0f98"
                source="#96e182f4-0521-4a45-85c2-385c2b46e838" target="#2a958e06-039d-49fb-b353-f7845fa1314e"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementLink"
                id="029581c8-7f55-4c38-9c10-3101867a1f09" involved="#4dfc75b2-23c9-4b6d-ae09-0f2032f1be1e"
                source="#5b30966e-6520-42d2-8e60-f02219407cfa" target="#080e5ae1-8915-489d-88fd-547d373a6a01"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementLink"
                id="8b022002-4e09-4c47-9cb9-fb79cebd3fc8" involved="#aecee461-f9b2-43f6-b7f5-23f3bb40eb3d"
                source="#080e5ae1-8915-489d-88fd-547d373a6a01" target="#04909118-b450-4e93-bc5b-2649b2d78394"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementLink"
                id="2cb0791f-0921-4b16-bf6d-efc1a81ff3b6" involved="#9ddc7d46-775c-44c3-829a-d1715a47273f"
                source="#04909118-b450-4e93-bc5b-2649b2d78394" target="#1d556dad-3c2c-41d4-9e47-9bd5e98a8971"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementLink"
                id="961a75d3-c42c-4d29-972d-0c82f45002ae" involved="#61e16db8-cd53-47df-9654-76ff0019000a"
                source="#1d556dad-3c2c-41d4-9e47-9bd5e98a8971" target="#e1c055ef-7384-424a-bffb-8f3100874b25"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementLink"
                id="1b13f3df-6cf3-4ec4-b37a-446fbe3b7b4f" involved="#fcb06ea3-07ed-42aa-8fa1-d3e9e609aa0e"
                source="#e1c055ef-7384-424a-bffb-8f3100874b25" target="#adefda62-07b5-4f74-b199-659f747c2f34"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementLink"
                id="e8305d61-c33a-4f73-8608-7cd694e8c791" involved="#1a284f4c-e169-4d5f-94ae-f37e7cd9e14e"
                source="#adefda62-07b5-4f74-b199-659f747c2f34" target="#710159ad-7973-49f7-af17-c91e260d5ec1"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementLink"
                id="e4fafc32-3604-4f06-b03a-54bd8f4bbc75" involved="#c0893db7-2ae2-4fc5-b7bf-11c68b14ee48"
                source="#710159ad-7973-49f7-af17-c91e260d5ec1" target="#facc3b49-2756-43e7-86e8-cfbfcc6b772a"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementLink"
                id="3f441d4d-5cdc-4e08-a76b-c92aa6067c0c" involved="#cb006dd6-6ae6-423c-a684-40ec93d0c1cb"
                source="#facc3b49-2756-43e7-86e8-cfbfcc6b772a" target="#814cad12-6e8d-4d23-b5e6-ecd26bfb2159"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementLink"
                id="f8751055-b7a3-43f5-87af-7950023e10e7" involved="#2f3e16b5-9c29-40a2-aaad-0175954d52e7"
                source="#814cad12-6e8d-4d23-b5e6-ecd26bfb2159" target="#6a8e465c-8bf9-4659-98b1-98b84ebe740f"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="5b30966e-6520-42d2-8e60-f02219407cfa" involved="#54b14102-3ad6-4a2e-bfe3-90c76680f870"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="04909118-b450-4e93-bc5b-2649b2d78394" involved="#03327669-186a-4e17-8b02-2b9170d66d53"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="e1c055ef-7384-424a-bffb-8f3100874b25" involved="#cd468610-1bc9-46b8-b111-aef755fcf780"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="3911f10b-b97f-4597-9fff-39111ae04169" involved="#842ef64e-a2a8-4f33-bfcc-f5748dcc4bff"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="710159ad-7973-49f7-af17-c91e260d5ec1" involved="#d35e2a23-cd82-487f-a8e9-ca58eca0e547"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="1d556dad-3c2c-41d4-9e47-9bd5e98a8971" involved="#54b14102-3ad6-4a2e-bfe3-90c76680f870"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="adefda62-07b5-4f74-b199-659f747c2f34" involved="#cc600fc2-e6af-486c-9346-69b49cc8cb21"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="96e182f4-0521-4a45-85c2-385c2b46e838" involved="#fa59b83b-f039-44a7-98f6-a3bb04639b20"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="facc3b49-2756-43e7-86e8-cfbfcc6b772a" involved="#54b14102-3ad6-4a2e-bfe3-90c76680f870"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="781c2ff2-e0b7-416a-849d-5c300fb2f197" involved="#126ece23-ef3b-4fe0-bec4-b3dbd903bfa6"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="6a8e465c-8bf9-4659-98b1-98b84ebe740f" involved="#842ef64e-a2a8-4f33-bfcc-f5748dcc4bff"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="5a61a6bc-f5b7-4bac-ae8c-d46340e6eb7b" involved="#3d6e5811-132e-4366-be8d-3c781083e703"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="2a958e06-039d-49fb-b353-f7845fa1314e" involved="#f845f6d1-b10a-4cb2-b8ad-4cf46da4b0eb"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="080e5ae1-8915-489d-88fd-547d373a6a01" involved="#4827a14b-4396-4ee3-9734-8ae3c0db294b"/>
            <ownedFunctionalChainInvolvements xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainInvolvementFunction"
                id="814cad12-6e8d-4d23-b5e6-ecd26bfb2159" involved="#610efa2d-22f1-4d5c-a058-0287baa9af70"/>
            <ownedFunctionalChainRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalChainRealization"
                id="8f23fe57-b5db-4f1e-8717-3310a2694a86" targetElement="#10a933c2-d5f3-4350-b908-09c6d793f689"
                sourceElement="#5c53fd55-8413-4124-99a7-91c61e92d0bc"/>
          </ownedFunctionalChains>
          <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
              id="8a127304-de5a-4c11-b7d7-68bf1a0d5486" name="Traverse la voie ferrée">
            <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                id="842ef64e-a2a8-4f33-bfcc-f5748dcc4bff" name="Franchit le passage">
              <ownedConstraints xsi:type="org.polarsys.capella.core.data.capellacore:Constraint"
                  id="d504684e-62c2-4015-816b-492a205dae69" name="Un véhicule routier ne doit pas pouvoir s''engager sur la voie si le passage lui est interdit"
                  constrainedElements="#842ef64e-a2a8-4f33-bfcc-f5748dcc4bff"/>
              <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
                  id="68cacd4d-5091-4edf-9699-f28306dd607a" targetElement="#8779731a-ea6c-479c-9524-518265e8fbb0"
                  sourceElement="#d504684e-62c2-4015-816b-492a205dae69"/>
              <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                  id="eb9fc215-b861-4227-a5d1-635e63067d0b" name="inAutorisation au véhicule de passer"/>
              <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                  id="5985c1c2-7601-4b41-8874-3400d703aa82" name="outInformation véhicule passé"/>
              <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                  id="4dfb375e-2576-4de8-9f2a-73776db08def" name="FOP 2"/>
              <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                  id="bf73cfef-fc3d-4adf-8643-d07e23637bf8" targetElement="#d4a043ef-aadb-4463-803f-e1e6c7b3244a"
                  sourceElement="#842ef64e-a2a8-4f33-bfcc-f5748dcc4bff"/>
            </ownedFunctions>
            <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                id="03327669-186a-4e17-8b02-2b9170d66d53" name="S''arrête avant le passage">
              <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                  id="2db42e51-366b-452f-ba63-c69eb08ee545" name="inInterdiction de passer"/>
              <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                  id="c8909f70-d47c-4e83-8c92-1868efe56f9a" name="outInformation d''arrêt véhicule"/>
              <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                  id="680b302f-34dc-4533-aba3-b4ff2421e7b4" targetElement="#99b0ff08-2727-4e23-8bfa-faf9048fc71c"
                  sourceElement="#03327669-186a-4e17-8b02-2b9170d66d53"/>
            </ownedFunctions>
            <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                id="817a5ef2-28cd-4fb4-944f-15300d47014b" name="Arrive près du passage">
              <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                  id="e1446792-aef7-4367-b630-df2530f02c76" name="outInformation d''arrivée véhicule"/>
              <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                  id="d0a5b8d0-f222-49e8-99aa-b82829ed22db" targetElement="#9045b02e-2995-4ade-965a-9247e50cc44c"
                  sourceElement="#817a5ef2-28cd-4fb4-944f-15300d47014b"/>
            </ownedFunctions>
          </ownedFunctions>
          <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
              id="0af29ba2-d7c7-45fe-a5c8-a7e47bf6d310" name="Quitte la gare">
            <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                id="cc600fc2-e6af-486c-9346-69b49cc8cb21" name="Démarre et franchit le passage">
              <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                  id="a098839e-9d84-476a-95a7-06e04d28525a" name="inAutorisation de départ du train"/>
              <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                  id="66101908-2042-4a95-8b4d-f7a8b8bd4bd3" name="outInformation train parti"/>
              <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                  id="92629d05-226c-41f7-96ca-973c186a7425" targetElement="#b53c8d8c-2b31-4875-9308-30a07b074720"
                  sourceElement="#cc600fc2-e6af-486c-9346-69b49cc8cb21"/>
            </ownedFunctions>
            <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                id="ecf9a6e4-7eb7-4428-ab4f-f61e29c92624" name="Se prépare à partir">
              <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                  id="6f9c9c8e-ea45-4279-b347-c183a8082683" name="inOrdre de préparation au départ"/>
              <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                  id="11994ca8-a78b-4ea1-b23e-1e1294a5eb18" targetElement="#7117c203-45cc-4c72-ab51-0a4070c8bdec"
                  sourceElement="#ecf9a6e4-7eb7-4428-ab4f-f61e29c92624"/>
            </ownedFunctions>
            <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                id="f845f6d1-b10a-4cb2-b8ad-4cf46da4b0eb" name="Attend l''autorisation de départ">
              <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                  id="19df2259-13ed-4ded-b283-f6c30dd24480" name="inInterdiction de démarrer"/>
              <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                  id="58ec301f-6034-44e8-bb65-b0c428a51d71" targetElement="#1d2914ca-cf49-4d35-9179-8a1b43669871"
                  sourceElement="#f845f6d1-b10a-4cb2-b8ad-4cf46da4b0eb"/>
            </ownedFunctions>
          </ownedFunctions>
          <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
              id="4634ba3e-abfe-49e6-826c-7e92a843d7cf" name="Arrive à la gare">
            <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                id="fc31f93c-a6cc-43c8-bafa-15e2535c4cb4" name="Franchit le passage">
              <ownedConstraints xsi:type="org.polarsys.capella.core.data.capellacore:Constraint"
                  id="a50a8e56-cffd-4953-afe4-495d90707c6e" name="Le franchissement simultané du passage par un véhicule routier et un train ne doit pas être possible"
                  constrainedElements="#fc31f93c-a6cc-43c8-bafa-15e2535c4cb4 #842ef64e-a2a8-4f33-bfcc-f5748dcc4bff #cc600fc2-e6af-486c-9346-69b49cc8cb21"/>
              <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
                  id="915afe4b-7dc8-4434-b0de-6ccacc6aaf9c" targetElement="#19311d15-6a82-4bb9-9263-bc1ff1fa623e"
                  sourceElement="#a50a8e56-cffd-4953-afe4-495d90707c6e"/>
              <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                  id="a36123a4-68e2-425a-bfd6-5231d36c621c" name="inAutorisation au train de passer"/>
              <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                  id="7d3a9c57-c07a-47bd-af44-d57731baf058" name="FOP 1"/>
              <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                  id="7f226909-9fe5-4f38-b33d-b2e48a0808ec" targetElement="#ae7aba9c-0b95-4623-bcda-92f19f895183"
                  sourceElement="#fc31f93c-a6cc-43c8-bafa-15e2535c4cb4"/>
            </ownedFunctions>
            <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                id="7919d7bb-edbf-4f20-87d9-7e87659fa3f4" name="S''arrête avant le passage">
              <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                  id="f805d3f3-df8e-40d0-bd1e-09827283b802" name="inCommande d''arrêt du train"/>
              <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                  id="abd83314-dc99-4fb3-987b-2f16e9e6c8b5" targetElement="#8b7717f7-bb4b-45c6-9551-ac4d7e811c3b"
                  sourceElement="#7919d7bb-edbf-4f20-87d9-7e87659fa3f4"/>
            </ownedFunctions>
            <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                id="5ec58430-4c8f-44c2-abbe-0077fe77989e" name="Arrive en vue du passage">
              <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                  id="5fff36b7-8765-47b5-a185-c28117a81a15" name="outInformation d''arrivée train"/>
              <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                  id="9cc4c1cc-6ef4-4932-983b-599f95217608" targetElement="#1612642c-f5a6-4667-b0c9-3a4c1e3277dc"
                  sourceElement="#5ec58430-4c8f-44c2-abbe-0077fe77989e"/>
            </ownedFunctions>
          </ownedFunctions>
          <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
              id="67865306-1660-43da-bd81-b3831b4875d6" name="Gère le trafic des trains">
            <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                id="f71d04ac-f98f-44ac-a54b-bf2e571b9db8" name="Détermine les horaires des trains">
              <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                  id="05ba128d-b3a0-4a1b-b24e-d163a8b2271f" name="outHoraires et état des trains"/>
              <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                  id="553ecbe1-3995-4982-a5f6-339f1ac69fcf" targetElement="#02a91359-eefb-4e89-933b-d566cc00de3c"
                  sourceElement="#f71d04ac-f98f-44ac-a54b-bf2e571b9db8"/>
            </ownedFunctions>
            <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                id="3d6e5811-132e-4366-be8d-3c781083e703" name="Lance la procédure de départ">
              <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                  id="8f2962eb-5899-48c7-94ef-fa6e203ce903" name="outOrdre de préparation au départ"/>
              <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                  id="c1ef73d3-2dae-476f-a369-e99638749581" name="outInformation train en partance"/>
              <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                  id="f3c0a8f8-12f6-4202-b387-8dca3940d41b" targetElement="#7e401d9f-31c9-40d5-9627-c944380d637b"
                  sourceElement="#3d6e5811-132e-4366-be8d-3c781083e703"/>
            </ownedFunctions>
          </ownedFunctions>
          <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
              id="2dadb0f7-31e0-482e-b6e3-917abf1051df" name="Gère le passage à niveau">
            <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                id="c6d78358-b8cc-43bd-b8de-73f6ca67938d" name="Surveille le trafic">
              <ownedConstraints xsi:type="org.polarsys.capella.core.data.capellacore:Constraint"
                  id="7bfa54ff-47b0-46e9-84be-1c3384f43fa7" name="Options : en visuel, ou selon détections système"
                  constrainedElements="#c6d78358-b8cc-43bd-b8de-73f6ca67938d">
                <ownedSpecification xsi:type="org.polarsys.capella.core.data.information.datavalue:OpaqueExpression"
                    id="33aa4d01-bf24-4c5b-ab0a-80cfaa3a2625">
                  <bodies></bodies>
                  <languages>capella:linkedText</languages>
                </ownedSpecification>
              </ownedConstraints>
              <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                  id="f3025538-860b-443e-b990-3e75f0817203" name="FIP 1"/>
              <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                  id="d41a1a72-f3c0-4a14-afc1-713f051e38fb" targetElement="#9c73e4c2-9e53-4950-92f5-867372a2b3a2"
                  sourceElement="#c6d78358-b8cc-43bd-b8de-73f6ca67938d"/>
            </ownedFunctions>
            <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                id="744d29c0-81a5-47d8-a755-5a0d3a7cda8c" name="Surveille l''état des consignes">
              <ownedConstraints xsi:type="org.polarsys.capella.core.data.capellacore:Constraint"
                  id="26156948-72dc-4a88-a767-9f63b409d453" name="Options : depuis les commandes de système, ou par observation directe des effets des consignes"
                  constrainedElements="#744d29c0-81a5-47d8-a755-5a0d3a7cda8c">
                <ownedSpecification xsi:type="org.polarsys.capella.core.data.information.datavalue:OpaqueExpression"
                    id="27fdfb62-09c0-43b1-8b98-3d01e40d159b">
                  <bodies></bodies>
                  <languages>capella:linkedText</languages>
                </ownedSpecification>
              </ownedConstraints>
              <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                  id="16010c43-29f5-4cc7-a3fd-33161ff62c19" name="FIP 1"/>
              <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                  id="1b3dadd6-126e-4797-96c0-c5c3b1beda55" targetElement="#9c73e4c2-9e53-4950-92f5-867372a2b3a2"
                  sourceElement="#744d29c0-81a5-47d8-a755-5a0d3a7cda8c"/>
            </ownedFunctions>
            <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                id="25f0cf4f-0362-4590-8cd2-ca1851f0a369" name="Surveille le bon fonctionnement du système">
              <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                  id="24574cf9-e40f-4a40-a43b-4d0124ced17e" name="FIP 1"/>
              <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                  id="62b78fc5-3cf5-4d65-ab24-8ef55784cd65" targetElement="#9c73e4c2-9e53-4950-92f5-867372a2b3a2"
                  sourceElement="#25f0cf4f-0362-4590-8cd2-ca1851f0a369"/>
            </ownedFunctions>
            <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                id="01659fc9-926e-4515-9f90-86a4f591db6e" name="Débloque les trains après arrêt d''urgence">
              <ownedConstraints xsi:type="org.polarsys.capella.core.data.capellacore:Constraint"
                  id="885ad224-a4b9-4987-bd31-d8b89778f2db" name="L''ajout d''un mode Arrêt d''urgence conduit à devoir définir une condition de sortie de ce mode, donc à ajouter ces fonctions et l''échange fonctionnel qui déclenchera la sortie du mode Arrêt d''urgence."
                  constrainedElements="#01659fc9-926e-4515-9f90-86a4f591db6e #34377b11-d0e9-4934-95f8-facae4de8707 #cc2861a0-e83e-4086-81a5-67d1873830be">
                <ownedSpecification xsi:type="org.polarsys.capella.core.data.information.datavalue:OpaqueExpression"
                    id="694fa51a-48bd-450b-8703-95cd93707a0d">
                  <bodies></bodies>
                  <languages>capella:linkedText</languages>
                </ownedSpecification>
              </ownedConstraints>
              <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                  id="b8b59a1f-1d8b-4aca-9a48-cf0ca48eb244" name="FOP 1"/>
            </ownedFunctions>
            <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                id="c35f1b2a-5b8d-42d7-8bd4-3c4272b6f7df" name="Arrête les trains en urgence">
              <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                  id="aee80208-dd54-4324-a18a-d3cd3aa3a793" name="FOP 1"/>
            </ownedFunctions>
          </ownedFunctions>
          <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
              id="eece1e5a-b5ba-44d7-8fda-0befff5cb9bc" name="Régule le trafic ferroviaire et routier">
            <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                id="c0e573df-9ebe-49b0-a8d3-6cb987b7772d" name="Contrôle la circulation des véhicules">
              <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                  id="4827a14b-4396-4ee3-9734-8ae3c0db294b" name="Empêche le passage des véhicules"
                  availableInStates="#d5a7fe39-9ff0-455e-ae89-8d886403b54d #91857a9b-4c69-46e3-bdba-f75729782858 #33c2659d-1526-4400-b907-22f70fdf34b5">
                <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                    id="2888cb7d-8e75-4d7e-9e17-50a02b5c1640" name="inTrain au départ ou arrivant"/>
                <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                    id="35a2df5c-1257-4715-8292-3222be90be0e" name="outInterdiction de passer"/>
                <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                    id="482dd342-4e84-4a41-8e08-fd1918bd60da" targetElement="#d7e5b145-d26b-4734-82a1-9ddec03c1471"
                    sourceElement="#4827a14b-4396-4ee3-9734-8ae3c0db294b"/>
                <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                    id="cdc2d251-e048-443e-bc33-37a5e6836342" targetElement="#99b0ff08-2727-4e23-8bfa-faf9048fc71c"
                    sourceElement="#4827a14b-4396-4ee3-9734-8ae3c0db294b"/>
              </ownedFunctions>
              <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                  id="610efa2d-22f1-4d5c-a058-0287baa9af70" name="Libère le passage des véhicules"
                  availableInStates="#d5a7fe39-9ff0-455e-ae89-8d886403b54d #91857a9b-4c69-46e3-bdba-f75729782858 #7ba44a02-edd6-47c7-97c4-296055be4e8d">
                <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                    id="36693cc1-0f96-4098-9ee3-0db3a4511fca" name="inPas de risque"/>
                <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                    id="c3486ba6-7258-4185-ad3c-3ff79e213bac" name="outAutorisation au véhicule de passer"/>
                <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                    id="94dd61cc-eb31-420c-bd7d-0826b6471feb" targetElement="#ba65c041-dcc1-446a-896f-458dc28888dc"
                    sourceElement="#610efa2d-22f1-4d5c-a058-0287baa9af70"/>
                <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                    id="0cbe8028-ec2b-4535-95c9-d2a807aad4e7" targetElement="#d4a043ef-aadb-4463-803f-e1e6c7b3244a"
                    sourceElement="#610efa2d-22f1-4d5c-a058-0287baa9af70"/>
              </ownedFunctions>
              <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                  id="126ece23-ef3b-4fe0-bec4-b3dbd903bfa6" name="Vérifie l''absence de véhicule sur le passage"
                  availableInStates="#d5a7fe39-9ff0-455e-ae89-8d886403b54d #91857a9b-4c69-46e3-bdba-f75729782858 #7ba44a02-edd6-47c7-97c4-296055be4e8d">
                <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                    id="ebb84ff7-d212-4e41-a6f0-6faec3f81633" name="inInformation véhicule passé"/>
                <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                    id="7abc4021-9006-4cd9-abd5-8792bbe81aa5" name="FIP 8"/>
                <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                    id="d5e0d0fd-83ec-4257-96d1-12710297a0d2" name="FOP 1"/>
                <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                    id="033b9ff0-cb85-4dab-b739-13401208da59" targetElement="#9c73e4c2-9e53-4950-92f5-867372a2b3a2"
                    sourceElement="#126ece23-ef3b-4fe0-bec4-b3dbd903bfa6"/>
                <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                    id="a8016841-96ae-40ca-b68a-ff1a8cf204fe" targetElement="#1612642c-f5a6-4667-b0c9-3a4c1e3277dc"
                    sourceElement="#126ece23-ef3b-4fe0-bec4-b3dbd903bfa6"/>
                <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                    id="47dfdd0c-c9c1-4e7b-b8de-9711da50332b" targetElement="#d4a043ef-aadb-4463-803f-e1e6c7b3244a"
                    sourceElement="#126ece23-ef3b-4fe0-bec4-b3dbd903bfa6"/>
                <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                    id="7f54da91-9840-4477-9cdd-0fb48b0d7814" targetElement="#99b0ff08-2727-4e23-8bfa-faf9048fc71c"
                    sourceElement="#126ece23-ef3b-4fe0-bec4-b3dbd903bfa6"/>
              </ownedFunctions>
            </ownedFunctions>
            <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                id="8ca590c8-7ff2-42f3-a194-2ef4c12cd543" name="Gère les mouvements de trains">
              <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                  id="988274ad-347e-460c-b033-266b120721df" name="Met en oeuvre la procédure de départ">
                <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                    id="d35e2a23-cd82-487f-a8e9-ca58eca0e547" name="Détecte le franchissement par le train partant"
                    availableInStates="#d5a7fe39-9ff0-455e-ae89-8d886403b54d">
                  <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                      id="7605eef5-8dca-4e49-8a32-9143a44e0306" name="inInformation train parti"/>
                  <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                      id="b33c3343-6663-47aa-823e-382186ae94d5" name="FOP 1"/>
                  <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                      id="e5e14bc4-f582-41e9-814f-263a9870d9b8" targetElement="#9c73e4c2-9e53-4950-92f5-867372a2b3a2"
                      sourceElement="#d35e2a23-cd82-487f-a8e9-ca58eca0e547"/>
                  <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                      id="e1393117-4a2a-43da-bd5f-5ccba450f579" targetElement="#b53c8d8c-2b31-4875-9308-30a07b074720"
                      sourceElement="#d35e2a23-cd82-487f-a8e9-ca58eca0e547"/>
                </ownedFunctions>
                <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                    id="cd468610-1bc9-46b8-b111-aef755fcf780" name="Signale au train l''autorisation de démarrer"
                    availableInStates="#d5a7fe39-9ff0-455e-ae89-8d886403b54d">
                  <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                      id="da1fdc45-4f06-44c9-b7c1-0c24be5c93ea" name="inPas de risque"/>
                  <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                      id="97d28236-5a9d-4199-865a-5913a4499e3e" name="outAutorisation de départ du train"/>
                  <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                      id="a426de43-280f-4185-bfae-dd3e4a0dc9bb" targetElement="#cb6179ce-0b71-478e-be94-93fa879a899b"
                      sourceElement="#cd468610-1bc9-46b8-b111-aef755fcf780"/>
                  <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                      id="f873a60b-39e8-469c-900e-a4e498bceb1c" targetElement="#b53c8d8c-2b31-4875-9308-30a07b074720"
                      sourceElement="#cd468610-1bc9-46b8-b111-aef755fcf780"/>
                </ownedFunctions>
                <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                    id="fa59b83b-f039-44a7-98f6-a3bb04639b20" name="Signale au train l''interdiction de démarrer"
                    availableInStates="#d5a7fe39-9ff0-455e-ae89-8d886403b54d #33c2659d-1526-4400-b907-22f70fdf34b5">
                  <ownedConstraints xsi:type="org.polarsys.capella.core.data.capellacore:Constraint"
                      id="74c2ee15-9952-446c-a2e0-619e58a74111" name="Un train au départ ne doit pas être retardé plus de 5mn"
                      constrainedElements="#fa59b83b-f039-44a7-98f6-a3bb04639b20"/>
                  <ownedConstraints xsi:type="org.polarsys.capella.core.data.capellacore:Constraint"
                      id="b8e3a434-ddfe-468c-9162-1c4e059c650a" name="Option : arrêt imposé physiquement du train"
                      constrainedElements="#fa59b83b-f039-44a7-98f6-a3bb04639b20">
                    <ownedSpecification xsi:type="org.polarsys.capella.core.data.information.datavalue:OpaqueExpression"
                        id="35d26cb7-f6c2-4612-ad67-c889662b9b35">
                      <bodies></bodies>
                      <languages>capella:linkedText</languages>
                    </ownedSpecification>
                  </ownedConstraints>
                  <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
                      id="648712a0-dc82-49bb-843a-ef4ab77eebd5" targetElement="#86eede59-971c-48a9-8352-47c8f11d4bbf"
                      sourceElement="#74c2ee15-9952-446c-a2e0-619e58a74111"/>
                  <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                      id="4398bc4c-d79f-49f2-bba0-1cd4ae42ef03" name="inVoitures engagées"/>
                  <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                      id="ebb19a43-cec5-4263-b7dc-7e50b4baa861" name="outInterdiction de démarrer"/>
                  <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                      id="b29ccaf7-fc5b-400d-aeea-0af5fc5f62c0" targetElement="#ce1f6a79-067d-402d-b409-94c4398859af"
                      sourceElement="#fa59b83b-f039-44a7-98f6-a3bb04639b20"/>
                  <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                      id="2f88e28c-d372-422b-9ad2-722ca7b5278d" targetElement="#1d2914ca-cf49-4d35-9179-8a1b43669871"
                      sourceElement="#fa59b83b-f039-44a7-98f6-a3bb04639b20"/>
                </ownedFunctions>
                <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                    id="54b14102-3ad6-4a2e-bfe3-90c76680f870" name="Supervise la procédure de départ"
                    availableInStates="#d5a7fe39-9ff0-455e-ae89-8d886403b54d">
                  <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                      id="6968a885-8253-46ab-9e62-7f4ab1747522" name="inInformation train en partance"/>
                  <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                      id="e2ba355e-d56f-4803-a522-df6d55955435" name="FIP 2"/>
                  <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                      id="fbdc1b94-1e72-422d-a4f3-57a75df7e39c" name="FIP 3"/>
                  <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                      id="03359ef7-42d7-4ce2-8ea9-6b2a93872ba5" name="inInformation d''arrivée véhicule"/>
                  <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                      id="f9ff5838-8441-4cc4-b593-2e78ba490561" name="inInformation d''arrêt véhicule"/>
                  <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                      id="ff6a097d-0db1-49b1-81a2-406cb7bbf7cc" name="inHoraires et état des trains"/>
                  <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                      id="9ccee6b1-2bb2-49b9-ac11-1e08c928c3e7" name="outTrain au départ ou arrivant"/>
                  <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                      id="88356ead-e004-4219-bc60-fc57dc0142df" name="outPas de risque"/>
                  <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                      id="c6944df2-32ff-404d-b3b9-76f56845218a" name="outPas de risque"/>
                  <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                      id="3f36e064-ad7e-48f0-8863-3a935ff65a91" name="outVoitures engagées"/>
                  <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                      id="b2fce3e6-88fd-40d4-ab4a-3dbe137751eb" targetElement="#9c73e4c2-9e53-4950-92f5-867372a2b3a2"
                      sourceElement="#54b14102-3ad6-4a2e-bfe3-90c76680f870"/>
                  <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                      id="e5b4cfb4-184f-4a9f-8a90-570852926a05" targetElement="#cb6179ce-0b71-478e-be94-93fa879a899b"
                      sourceElement="#54b14102-3ad6-4a2e-bfe3-90c76680f870"/>
                  <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                      id="47281e47-2a86-45f5-b84f-2a928b9ccf4a" targetElement="#ce1f6a79-067d-402d-b409-94c4398859af"
                      sourceElement="#54b14102-3ad6-4a2e-bfe3-90c76680f870"/>
                  <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                      id="a57b08c1-c46b-4745-a7b7-2a719403a57e" targetElement="#d7e5b145-d26b-4734-82a1-9ddec03c1471"
                      sourceElement="#54b14102-3ad6-4a2e-bfe3-90c76680f870"/>
                  <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                      id="31d78df4-ed29-407f-9871-acaf176db410" targetElement="#ba65c041-dcc1-446a-896f-458dc28888dc"
                      sourceElement="#54b14102-3ad6-4a2e-bfe3-90c76680f870"/>
                </ownedFunctions>
                <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
                    id="c0893db7-2ae2-4fc5-b7bf-11c68b14ee48" name="Franchissement du passage par le train en partance"
                    target="#fbdc1b94-1e72-422d-a4f3-57a75df7e39c" source="#b33c3343-6663-47aa-823e-382186ae94d5"/>
                <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
                    id="61e16db8-cd53-47df-9654-76ff0019000a" name="Consigne de départ de train"
                    target="#da1fdc45-4f06-44c9-b7c1-0c24be5c93ea" source="#c6944df2-32ff-404d-b3b9-76f56845218a">
                  <ownedFunctionalExchangeRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchangeRealization"
                      id="661fc7ed-9e55-4f2d-b0a0-17ef56439067" targetElement="#b7146837-2ed7-436f-aed4-9f1ebd990eff"
                      sourceElement="#61e16db8-cd53-47df-9654-76ff0019000a"/>
                </ownedFunctionalExchanges>
                <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
                    id="347b1622-4e1d-4513-9434-a843f9eec92e" name="Consigne de blocage du train au départ"
                    target="#4398bc4c-d79f-49f2-bba0-1cd4ae42ef03" source="#3f36e064-ad7e-48f0-8863-3a935ff65a91">
                  <ownedFunctionalExchangeRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchangeRealization"
                      id="d1d48355-9348-47c6-a4d6-c021b952cf40" targetElement="#b3fa2745-92b1-4a0b-97e3-7ca1dc41ce7d"
                      sourceElement="#347b1622-4e1d-4513-9434-a843f9eec92e"/>
                </ownedFunctionalExchanges>
              </ownedFunctions>
              <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                  id="d9a3496b-f48a-44ee-adef-64b67c3ec38f" name="Met en oeuvre la procédure d''arrivée">
                <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                    id="0f8e67c3-5d84-47eb-bc95-6ae45e1db7a5" name="Détecte l''arrivée du train"
                    availableInStates="#91857a9b-4c69-46e3-bdba-f75729782858">
                  <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                      id="fc50b347-8d70-4166-a000-9e5ccd1b55b0" name="inInformation d''arrivée train"/>
                  <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                      id="be95c913-a4b2-46a1-90ec-a04d6540dc54" name="FOP 1"/>
                  <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                      id="0678646c-ae64-4eed-b266-2c8fcdb3353f" targetElement="#9c73e4c2-9e53-4950-92f5-867372a2b3a2"
                      sourceElement="#0f8e67c3-5d84-47eb-bc95-6ae45e1db7a5"/>
                  <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                      id="dff5941b-333b-4e18-b95d-2785fa5dac73" targetElement="#1612642c-f5a6-4667-b0c9-3a4c1e3277dc"
                      sourceElement="#0f8e67c3-5d84-47eb-bc95-6ae45e1db7a5"/>
                </ownedFunctions>
                <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                    id="19fbbd53-5adc-4511-b228-af4196a42629" name="Détecte le franchissement par le train arrivant"
                    availableInStates="#91857a9b-4c69-46e3-bdba-f75729782858">
                  <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                      id="60be8d77-03ef-458e-ad20-2c86cd4ed0cc" name="FIP 1"/>
                  <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                      id="2f500f01-4149-4573-9f63-a17acaffd92e" name="FOP 1"/>
                  <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                      id="cc4b1b24-df24-4799-a911-e12e4f51003b" targetElement="#9c73e4c2-9e53-4950-92f5-867372a2b3a2"
                      sourceElement="#19fbbd53-5adc-4511-b228-af4196a42629"/>
                  <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                      id="b66c7cbb-9126-4b1e-9554-911817ed8ea8" targetElement="#ae7aba9c-0b95-4623-bcda-92f19f895183"
                      sourceElement="#19fbbd53-5adc-4511-b228-af4196a42629"/>
                </ownedFunctions>
                <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                    id="eb0f13c4-2ac1-483e-941f-d135ee0d4b03" name="Signale au train l''autorisation de passer"
                    availableInStates="#91857a9b-4c69-46e3-bdba-f75729782858">
                  <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                      id="2a5d71bb-1d5a-4723-ba24-9e5a5ba54466" name="inPas de risque"/>
                  <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                      id="8b0b217a-50a1-4790-942e-e5665f1ce98e" name="outAutorisation au train de passer"/>
                  <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                      id="9b70801a-2f3a-4e08-be47-87dcb19d7502" targetElement="#119113c7-6243-4b77-8287-5d3e3b39d391"
                      sourceElement="#eb0f13c4-2ac1-483e-941f-d135ee0d4b03"/>
                  <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                      id="8ee3de27-3f7b-4b7e-88fb-3dce738c463c" targetElement="#ae7aba9c-0b95-4623-bcda-92f19f895183"
                      sourceElement="#eb0f13c4-2ac1-483e-941f-d135ee0d4b03"/>
                </ownedFunctions>
                <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                    id="858beec0-b275-4549-bd1f-27aca5052327" name="Signale au train l''indisponibilité de la voie"
                    availableInStates="#91857a9b-4c69-46e3-bdba-f75729782858 #33c2659d-1526-4400-b907-22f70fdf34b5">
                  <ownedConstraints xsi:type="org.polarsys.capella.core.data.capellacore:Constraint"
                      id="401db56f-062b-4854-871d-895bf6383660" name="Un train arrivant ne doit pas être retardé plus de 5mn"
                      constrainedElements="#858beec0-b275-4549-bd1f-27aca5052327"/>
                  <ownedConstraints xsi:type="org.polarsys.capella.core.data.capellacore:Constraint"
                      id="f60254ae-b3c8-48da-bc33-81b0a18b451e" name="Option : empêchement physique du franchissement"
                      constrainedElements="#858beec0-b275-4549-bd1f-27aca5052327">
                    <ownedSpecification xsi:type="org.polarsys.capella.core.data.information.datavalue:OpaqueExpression"
                        id="a3674d0c-ce1e-4c43-9999-7a7fe69b683f">
                      <bodies></bodies>
                      <languages>capella:linkedText</languages>
                    </ownedSpecification>
                  </ownedConstraints>
                  <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
                      id="12cc9f18-fe56-4694-9479-07aefe4bf25a" targetElement="#30de71f8-ed95-4e85-8772-4582ca51da17"
                      sourceElement="#401db56f-062b-4854-871d-895bf6383660"/>
                  <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                      id="e796ff2b-3e4f-4a7c-afc0-d8791375130d" name="inVoitures engagées"/>
                  <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                      id="05de87db-5cdd-4a6a-9e95-0279665023e6" name="outCommande d''arrêt du train"/>
                  <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                      id="606e98bd-bc2e-4943-b0bc-88d71367ab56" targetElement="#b990fa30-a197-4ff3-898b-ad69f8c01c1a"
                      sourceElement="#858beec0-b275-4549-bd1f-27aca5052327"/>
                  <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                      id="dd822a43-5301-45a2-bb9e-edb213a9c904" targetElement="#8b7717f7-bb4b-45c6-9551-ac4d7e811c3b"
                      sourceElement="#858beec0-b275-4549-bd1f-27aca5052327"/>
                </ownedFunctions>
                <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                    id="c3dab7d3-fca0-463f-b02d-fb1b7a6a9697" name="Supervise la procédure d''arrivée"
                    availableInStates="#91857a9b-4c69-46e3-bdba-f75729782858">
                  <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                      id="5dfa59d1-9b03-41bb-aeb2-d268e87ef105" name="inInformation d''arrêt train"/>
                  <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                      id="fc4d55bd-f03d-40cc-9e6e-ea29d2bf7492" name="FIP 4"/>
                  <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                      id="cbeb5061-8291-46ca-a3b7-0512316ea281" name="FIP 5"/>
                  <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                      id="9eb092d1-71cd-4a34-9cb4-a9b9760f4f7a" name="FIP 6"/>
                  <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                      id="3e3b2f0a-f86b-4325-b072-1d102284948f" name="FIP 7"/>
                  <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                      id="468b961b-fab3-4c34-ac42-961faee4565d" name="FIP 8"/>
                  <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                      id="885e0286-291a-4bcd-a6e5-8b31fd0832ff" name="outVoitures engagées"/>
                  <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                      id="5daa5a22-b3bd-4dff-b676-466f9a7143f9" name="outPas de risque"/>
                  <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                      id="390639f0-3675-4ded-b309-b943eb5ead47" name="FOP 3"/>
                  <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                      id="4c925b00-3a1a-456e-9cc6-255d0cc4c2af" name="FOP 4"/>
                  <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                      id="2b839958-fc6c-40be-a89d-d2a2f1d5c91d" targetElement="#9c73e4c2-9e53-4950-92f5-867372a2b3a2"
                      sourceElement="#c3dab7d3-fca0-463f-b02d-fb1b7a6a9697"/>
                  <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                      id="1532baa5-657c-4231-9ae5-bfea681ec067" targetElement="#119113c7-6243-4b77-8287-5d3e3b39d391"
                      sourceElement="#c3dab7d3-fca0-463f-b02d-fb1b7a6a9697"/>
                  <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                      id="9f6e3b22-8ed3-4832-a4fc-a03076967cbb" targetElement="#b990fa30-a197-4ff3-898b-ad69f8c01c1a"
                      sourceElement="#c3dab7d3-fca0-463f-b02d-fb1b7a6a9697"/>
                  <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                      id="346a9a49-95c4-403e-83d6-e8888aee43e3" targetElement="#ba65c041-dcc1-446a-896f-458dc28888dc"
                      sourceElement="#c3dab7d3-fca0-463f-b02d-fb1b7a6a9697"/>
                  <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                      id="71ba4acd-27dd-46f7-ad1d-35c2afc9b57b" targetElement="#d7e5b145-d26b-4734-82a1-9ddec03c1471"
                      sourceElement="#c3dab7d3-fca0-463f-b02d-fb1b7a6a9697"/>
                </ownedFunctions>
                <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
                    id="766ef336-4b56-4a23-8071-459c4301249e" name="Information train arrivant en approche"
                    target="#5dfa59d1-9b03-41bb-aeb2-d268e87ef105" source="#be95c913-a4b2-46a1-90ec-a04d6540dc54"/>
                <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
                    id="c24872ea-28e3-4c31-90e2-6b2d81aa4bf7" name="Franchissement du passage par le train arrivant"
                    target="#468b961b-fab3-4c34-ac42-961faee4565d" source="#2f500f01-4149-4573-9f63-a17acaffd92e"/>
                <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
                    id="c41b62d5-14f0-4a87-89fa-b5b52c7dc6d7" name="Voitures engagées"
                    target="#e796ff2b-3e4f-4a7c-afc0-d8791375130d" source="#885e0286-291a-4bcd-a6e5-8b31fd0832ff">
                  <ownedFunctionalExchangeRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchangeRealization"
                      id="4bdb58b8-a3fc-4b89-8b03-80425e8a980f" targetElement="#7e6a3463-4b66-4a61-aab3-71300f88ac17"
                      sourceElement="#c41b62d5-14f0-4a87-89fa-b5b52c7dc6d7"/>
                </ownedFunctionalExchanges>
                <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
                    id="f9729f21-d62f-474c-99c5-bd1367c07e81" name="Consigne de passage du train"
                    target="#2a5d71bb-1d5a-4723-ba24-9e5a5ba54466" source="#5daa5a22-b3bd-4dff-b676-466f9a7143f9">
                  <ownedFunctionalExchangeRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchangeRealization"
                      id="9af30bdf-ae0b-4e9e-9777-2b43f1b7c7ea" targetElement="#5a79850e-a71a-401c-b249-e8d057df4c7c"
                      sourceElement="#f9729f21-d62f-474c-99c5-bd1367c07e81"/>
                </ownedFunctionalExchanges>
              </ownedFunctions>
            </ownedFunctions>
            <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                id="2b927113-b21d-4b57-b7d9-d00690525b11" name="Surveille le fonctionnement">
              <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                  id="c792cf67-3aff-4e55-ba1e-d60fa32c27a0" name="Synthétise l''état du trafic">
                <ownedConstraints xsi:type="org.polarsys.capella.core.data.capellacore:Constraint"
                    id="577f2739-2ee3-4961-9830-3e0f222f2989" name="Options : Le client n''impose pas de modalités particulières pour les fonctions de surveillance, elles ne sont donc pas reliées aux sources des informations à ce stade de l''analyse.&#xD;&#xA;La nature des données échangées n''est pas non plus précisée pour les mêmes raisons."
                    constrainedElements="#c792cf67-3aff-4e55-ba1e-d60fa32c27a0 #4169a14c-1705-4994-ba41-de595f81ed8e #8baf918d-1507-4e8f-adf8-8103dddb9534">
                  <ownedSpecification xsi:type="org.polarsys.capella.core.data.information.datavalue:OpaqueExpression"
                      id="3113d1a6-6673-4423-9ba4-0d058a7bf671">
                    <bodies></bodies>
                    <languages>capella:linkedText</languages>
                  </ownedSpecification>
                </ownedConstraints>
                <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                    id="63ca5661-80e0-4557-a57b-aa10da6cc433" name="FOP 1"/>
                <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                    id="106bb052-b24d-408f-9379-64e99c68e315" targetElement="#9c73e4c2-9e53-4950-92f5-867372a2b3a2"
                    sourceElement="#c792cf67-3aff-4e55-ba1e-d60fa32c27a0"/>
                <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                    id="98b56224-f2bf-4f32-8367-3254ac96eea7" targetElement="#ce1f6a79-067d-402d-b409-94c4398859af"
                    sourceElement="#c792cf67-3aff-4e55-ba1e-d60fa32c27a0"/>
              </ownedFunctions>
              <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                  id="8baf918d-1507-4e8f-adf8-8103dddb9534" name="Collecte l''état de fonctionnement du système">
                <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                    id="d25bab76-e6cc-49bf-b565-ad5016b0e39e" name="FOP 1"/>
                <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                    id="7656c1d3-2a02-455e-9c89-9482d551931c" targetElement="#9c73e4c2-9e53-4950-92f5-867372a2b3a2"
                    sourceElement="#8baf918d-1507-4e8f-adf8-8103dddb9534"/>
              </ownedFunctions>
              <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                  id="4169a14c-1705-4994-ba41-de595f81ed8e" name="Collecte l''état des consignes">
                <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                    id="44ca1008-a76c-4dc1-98cf-73893e111fbd" name="FOP 1"/>
                <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                    id="8ab45912-64d5-4636-a642-b10684c59ae1" targetElement="#9c73e4c2-9e53-4950-92f5-867372a2b3a2"
                    sourceElement="#4169a14c-1705-4994-ba41-de595f81ed8e"/>
              </ownedFunctions>
              <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                  id="9dee1092-e1c0-4b92-a255-59ce9e0943c2" name="Coupe l''alimentation en urgence"
                  availableInStates="#33c2659d-1526-4400-b907-22f70fdf34b5">
                <ownedConstraints xsi:type="org.polarsys.capella.core.data.capellacore:Constraint"
                    id="2e2c8c01-1efc-45d9-b0cd-26ea9e3a0c7c" name="Le système coupe l''alimentation, mais seulement sur demande des opérateurs, ou automatiquement en option"
                    constrainedElements="#9dee1092-e1c0-4b92-a255-59ce9e0943c2 #c35f1b2a-5b8d-42d7-8bd4-3c4272b6f7df">
                  <ownedSpecification xsi:type="org.polarsys.capella.core.data.information.datavalue:OpaqueExpression"
                      id="25b3049e-b763-4341-b019-171d9ebc05c3">
                    <bodies></bodies>
                    <languages>capella:linkedText</languages>
                  </ownedSpecification>
                </ownedConstraints>
                <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                    id="7614f7ed-2cc9-4caf-b851-f6847ff51fb2" name="FIP 1"/>
                <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                    id="33bca801-87f4-46d8-af2e-28eb10906c5b" targetElement="#b990fa30-a197-4ff3-898b-ad69f8c01c1a"
                    sourceElement="#9dee1092-e1c0-4b92-a255-59ce9e0943c2"/>
              </ownedFunctions>
              <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                  id="34377b11-d0e9-4934-95f8-facae4de8707" name="Restaure l''alimentation des trains ">
                <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                    id="ddf3e45f-d9d3-4652-bb68-7f7143a9e073" name="FIP 1"/>
              </ownedFunctions>
            </ownedFunctions>
          </ownedFunctions>
          <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
              id="1366c6e2-9fef-4172-b8e7-7007e2ed5dd0" targetElement="#68f07fe9-10b1-4cdf-a312-a6eb5476abd3"
              sourceElement="#81b458a1-84ec-4d85-96a3-7e83d8bab92d"/>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="9ddc7d46-775c-44c3-829a-d1715a47273f" name="Information d''arrêt véhicule"
              target="#f9ff5838-8441-4cc4-b593-2e78ba490561" source="#c8909f70-d47c-4e83-8c92-1868efe56f9a">
            <ownedFunctionalExchangeRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchangeRealization"
                id="bead0888-7fdb-43f4-b690-b25fef2bcab0" targetElement="#43091dec-d765-46e0-96d3-ab4fcdce967e"
                sourceElement="#9ddc7d46-775c-44c3-829a-d1715a47273f"/>
          </ownedFunctionalExchanges>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="4dfc75b2-23c9-4b6d-ae09-0f2032f1be1e" name="Consigne d''arrêt trafic routier"
              target="#2888cb7d-8e75-4d7e-9e17-50a02b5c1640" source="#9ccee6b1-2bb2-49b9-ac11-1e08c928c3e7">
            <ownedFunctionalExchangeRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchangeRealization"
                id="3ff9f60e-60cc-430e-8dae-b3c751913abd" targetElement="#f79c76b8-f66f-42ac-8dd8-9e7a4107db57"
                sourceElement="#4dfc75b2-23c9-4b6d-ae09-0f2032f1be1e"/>
          </ownedFunctionalExchanges>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="cb006dd6-6ae6-423c-a684-40ec93d0c1cb" name="Consigne d''autorisation trafic routier"
              target="#36693cc1-0f96-4098-9ee3-0db3a4511fca" source="#88356ead-e004-4219-bc60-fc57dc0142df">
            <ownedFunctionalExchangeRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchangeRealization"
                id="d5c5141c-fe26-4cc4-b99f-dfeb54f6f795" targetElement="#fa9961e5-9ff7-45a1-a069-292a8db4dc36"
                sourceElement="#cb006dd6-6ae6-423c-a684-40ec93d0c1cb"/>
          </ownedFunctionalExchanges>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="1a284f4c-e169-4d5f-94ae-f37e7cd9e14e" name="Information train passé"
              target="#7605eef5-8dca-4e49-8a32-9143a44e0306" source="#66101908-2042-4a95-8b4d-f7a8b8bd4bd3">
            <ownedFunctionalExchangeRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchangeRealization"
                id="39067a91-3d62-4aeb-a4b5-c77887c9278c" targetElement="#3c092a1a-678a-48fb-a1ce-163c783ce72b"
                sourceElement="#1a284f4c-e169-4d5f-94ae-f37e7cd9e14e"/>
          </ownedFunctionalExchanges>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="55e467aa-939b-493a-89c8-9a80b40f8a8b" name="Information d''arrivée véhicule"
              target="#03359ef7-42d7-4ce2-8ea9-6b2a93872ba5" source="#e1446792-aef7-4367-b630-df2530f02c76">
            <ownedFunctionalExchangeRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchangeRealization"
                id="3b94501b-f72f-4d84-877f-11b1cce0ae1e" targetElement="#704dc279-e7af-42e7-9bea-9848cc03dcaa"
                sourceElement="#55e467aa-939b-493a-89c8-9a80b40f8a8b"/>
          </ownedFunctionalExchanges>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="aecee461-f9b2-43f6-b7f5-23f3bb40eb3d" name="Interdiction de passer"
              target="#2db42e51-366b-452f-ba63-c69eb08ee545" source="#35a2df5c-1257-4715-8292-3222be90be0e">
            <ownedFunctionalExchangeRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchangeRealization"
                id="16b5f2c7-c7ad-4180-9034-c016e9c263c5" targetElement="#db1548b3-ed51-4874-87af-e65b0da57469"
                sourceElement="#aecee461-f9b2-43f6-b7f5-23f3bb40eb3d"/>
          </ownedFunctionalExchanges>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="2f3e16b5-9c29-40a2-aaad-0175954d52e7" name="Autorisation au véhicule de passer"
              target="#eb9fc215-b861-4227-a5d1-635e63067d0b" source="#c3486ba6-7258-4185-ad3c-3ff79e213bac">
            <ownedFunctionalExchangeRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchangeRealization"
                id="10cd6a47-c636-46e5-b93f-e3246e3b9359" targetElement="#e08372af-f656-4089-beec-0d5e5b845214"
                sourceElement="#2f3e16b5-9c29-40a2-aaad-0175954d52e7"/>
          </ownedFunctionalExchanges>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="f1b96c69-4b60-4d9e-97c0-db56e45a0f98" name="Interdiction de démarrer"
              target="#19df2259-13ed-4ded-b283-f6c30dd24480" source="#ebb19a43-cec5-4263-b7dc-7e50b4baa861">
            <ownedFunctionalExchangeRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchangeRealization"
                id="eff2522d-a49e-4b84-85e1-738d87866482" targetElement="#1fbcb499-bb01-4f65-826f-3e4888ba2e16"
                sourceElement="#f1b96c69-4b60-4d9e-97c0-db56e45a0f98"/>
          </ownedFunctionalExchanges>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="54522c92-70ed-4342-ad53-e59491f698b1" name="Information train en partance"
              target="#6968a885-8253-46ab-9e62-7f4ab1747522" source="#c1ef73d3-2dae-476f-a369-e99638749581"
              exchangedItems="#320e5d78-ce92-4616-a439-5b2ae01d697f">
            <ownedFunctionalExchangeRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchangeRealization"
                id="e1746003-c8e2-4a9f-80f3-0f0a391658df" targetElement="#7c1b6fa7-a212-49cd-8540-b3abd46a7483"
                sourceElement="#54522c92-70ed-4342-ad53-e59491f698b1"/>
          </ownedFunctionalExchanges>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="0812acad-b57c-4e90-a572-085854a909bd" name="Horaires et état des trains"
              target="#ff6a097d-0db1-49b1-81a2-406cb7bbf7cc" source="#05ba128d-b3a0-4a1b-b24e-d163a8b2271f"
              exchangedItems="#52b95c54-3cf2-438d-99f5-f95fd648a01b">
            <ownedFunctionalExchangeRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchangeRealization"
                id="1694fc02-65a0-4164-b97c-b6a094b84d6a" targetElement="#f341db0e-db38-458f-af09-154b34b07b9e"
                sourceElement="#0812acad-b57c-4e90-a572-085854a909bd"/>
          </ownedFunctionalExchanges>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="fcb06ea3-07ed-42aa-8fa1-d3e9e609aa0e" name="Autorisation de départ du train"
              target="#a098839e-9d84-476a-95a7-06e04d28525a" source="#97d28236-5a9d-4199-865a-5913a4499e3e">
            <ownedFunctionalExchangeRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchangeRealization"
                id="8e4337fa-4add-4603-905c-3ec543644239" targetElement="#d9680740-ca22-4625-84b4-212ecab6b961"
                sourceElement="#fcb06ea3-07ed-42aa-8fa1-d3e9e609aa0e"/>
          </ownedFunctionalExchanges>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="def080bc-3288-4e87-af04-901954ecd24f" name="Ordre de préparation au départ"
              target="#6f9c9c8e-ea45-4279-b347-c183a8082683" source="#8f2962eb-5899-48c7-94ef-fa6e203ce903">
            <ownedFunctionalExchangeRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchangeRealization"
                id="bf662bbc-5f00-4560-8279-72b520a67c41" targetElement="#6d6a273f-df03-41a4-acac-0db4e28bdfb2"
                sourceElement="#def080bc-3288-4e87-af04-901954ecd24f"/>
          </ownedFunctionalExchanges>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="63bc340c-2266-4cd9-b311-be71ee531ab5" name="Commande d''arrêt du train"
              target="#f805d3f3-df8e-40d0-bd1e-09827283b802" source="#05de87db-5cdd-4a6a-9e95-0279665023e6">
            <ownedFunctionalExchangeRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchangeRealization"
                id="c5bddaf9-19df-4180-b2a8-790d7584b973" targetElement="#555951e1-8b9d-45ea-8fcb-2738053cf398"
                sourceElement="#63bc340c-2266-4cd9-b311-be71ee531ab5"/>
          </ownedFunctionalExchanges>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="137f21b6-e7cc-4a94-b305-9061f70a7a98" name="Information d''arrivée train"
              target="#fc50b347-8d70-4166-a000-9e5ccd1b55b0" source="#5fff36b7-8765-47b5-a185-c28117a81a15">
            <ownedFunctionalExchangeRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchangeRealization"
                id="8d5771e6-7846-4a1f-a848-5a7cc0d9471c" targetElement="#93948524-9290-4c52-b2f0-66d3091f7206"
                sourceElement="#137f21b6-e7cc-4a94-b305-9061f70a7a98"/>
          </ownedFunctionalExchanges>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="4b76d307-7773-47fe-be89-e6c439e3dd76" name="Autorisation au train de passer"
              target="#a36123a4-68e2-425a-bfd6-5231d36c621c" source="#8b0b217a-50a1-4790-942e-e5665f1ce98e">
            <ownedFunctionalExchangeRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchangeRealization"
                id="f47e5ae3-27c1-4ef1-9fd2-29cfbeca1915" targetElement="#7e273962-2829-4f27-9f9a-82ab4dd20008"
                sourceElement="#4b76d307-7773-47fe-be89-e6c439e3dd76"/>
          </ownedFunctionalExchanges>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="88de66c4-875a-47b3-84c8-75e9592777d6" name="Information véhicule passé"
              target="#ebb84ff7-d212-4e41-a6f0-6faec3f81633" source="#5985c1c2-7601-4b41-8874-3400d703aa82">
            <ownedFunctionalExchangeRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchangeRealization"
                id="199d11ff-5035-49e7-a1c8-c12709c3114d" targetElement="#05110230-3748-4244-bb08-df2d52c8c079"
                sourceElement="#88de66c4-875a-47b3-84c8-75e9592777d6"/>
          </ownedFunctionalExchanges>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="ac6d0f53-7a60-43e3-95c0-446753a2ae7f" name="Etat de présence véhicule sur le passage"
              target="#e2ba355e-d56f-4803-a522-df6d55955435" source="#d5e0d0fd-83ec-4257-96d1-12710297a0d2"/>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="db76b1c5-9ef1-4f48-a007-20fc8ef903a5" name="Information véhicule engagé"
              target="#7abc4021-9006-4cd9-abd5-8792bbe81aa5" source="#4dfb375e-2576-4de8-9f2a-73776db08def"/>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="1bb6bb52-5b61-4397-84f3-eb444297c3dc" name="Information d''arrivée véhicule"
              target="#fc4d55bd-f03d-40cc-9e6e-ea29d2bf7492" source="#e1446792-aef7-4367-b630-df2530f02c76"/>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="de7d1d21-0537-41a5-acee-8d6bf057958d" name="Consigne d''arrêt trafic routier"
              target="#2888cb7d-8e75-4d7e-9e17-50a02b5c1640" source="#390639f0-3675-4ded-b309-b943eb5ead47"/>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="e985c86a-a9da-4099-8c40-220eb1f8fa4d" name="Information d''arrêt véhicule"
              target="#cbeb5061-8291-46ca-a3b7-0512316ea281" source="#c8909f70-d47c-4e83-8c92-1868efe56f9a"/>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="94c94fb2-ad0f-4758-b4fc-5f61f5e4d2c7" name="Consigne d''autorisation trafic routier"
              target="#36693cc1-0f96-4098-9ee3-0db3a4511fca" source="#4c925b00-3a1a-456e-9cc6-255d0cc4c2af"/>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="53dcd518-abf1-4cb7-956c-687fb2b4a3ab" name="Etat de présence véhicule sur le passage"
              target="#9eb092d1-71cd-4a34-9cb4-a9b9760f4f7a" source="#d5e0d0fd-83ec-4257-96d1-12710297a0d2"/>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="3ba4bfbc-170a-4b09-88c4-4a931b1f7a72" name="Horaires et état des trains"
              target="#3e3b2f0a-f86b-4325-b072-1d102284948f" source="#05ba128d-b3a0-4a1b-b24e-d163a8b2271f"
              exchangedItems="#52b95c54-3cf2-438d-99f5-f95fd648a01b"/>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="bbe1ac75-b9a6-4045-bdb5-81def92d0737" name="Information train passé"
              target="#60be8d77-03ef-458e-ad20-2c86cd4ed0cc" source="#7d3a9c57-c07a-47bd-af44-d57731baf058"/>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="33541e0a-05d6-4f5e-9c58-cf6dd53eb83b" name="Etat du système" target="#24574cf9-e40f-4a40-a43b-4d0124ced17e"
              source="#d25bab76-e6cc-49bf-b565-ad5016b0e39e"/>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="27691bb5-b722-4d9f-87c5-d386fe694079" name="Etat des consignes"
              target="#16010c43-29f5-4cc7-a3fd-33161ff62c19" source="#44ca1008-a76c-4dc1-98cf-73893e111fbd"/>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="8bd24e51-1f2e-4603-aac8-dcd92b97d7a0" name="Trafic" target="#f3025538-860b-443e-b990-3e75f0817203"
              source="#63ca5661-80e0-4557-a57b-aa10da6cc433"/>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="c14089fb-a49a-4a93-9824-b7eabf8a4ac0" name="Commande arrêt d''urgence"
              target="#7614f7ed-2cc9-4caf-b851-f6847ff51fb2" source="#aee80208-dd54-4324-a18a-d3cd3aa3a793"/>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="cc2861a0-e83e-4086-81a5-67d1873830be" name="Commande de restauration de l''alimentation électrique"
              target="#ddf3e45f-d9d3-4652-bb68-7f7143a9e073" source="#b8b59a1f-1d8b-4aca-9a48-cf0ca48eb244"/>
        </ownedSystemFunctions>
      </ownedFunctionPkg>
      <ownedAbstractCapabilityPkg xsi:type="org.polarsys.capella.core.data.ctx:CapabilityPkg"
          id="d4b4d6ff-1c00-434f-9a2e-81f9f999d5b3" name="Capabilities">
        <ownedCapabilities xsi:type="org.polarsys.capella.core.data.ctx:Capability"
            id="4f919c8b-8b6d-4c47-b069-cedce2406259" name="Contrôler et commander le trafic des véhicules routiers">
          <ownedScenarios xsi:type="org.polarsys.capella.core.data.interaction:Scenario"
              id="28930e75-40c7-4649-8fa9-562f2c560ff4" name="Scenario" kind="FUNCTIONAL">
            <ownedInstanceRoles xsi:type="org.polarsys.capella.core.data.interaction:InstanceRole"
                id="6e8acb73-9db9-4ad2-9de3-ea4d83e8273a" name="Supervise la procédure de départ"
                representedInstance="#54b14102-3ad6-4a2e-bfe3-90c76680f870"/>
            <ownedInstanceRoles xsi:type="org.polarsys.capella.core.data.interaction:InstanceRole"
                id="99fde12b-7393-4225-80ee-295c2b5c6155" name="Empêche le passage des véhicules"
                representedInstance="#4827a14b-4396-4ee3-9734-8ae3c0db294b"/>
            <ownedInstanceRoles xsi:type="org.polarsys.capella.core.data.interaction:InstanceRole"
                id="c7a77307-fa8d-4a56-9188-2d74a6fea8a2" name="S''arrête avant le passage"
                representedInstance="#03327669-186a-4e17-8b02-2b9170d66d53"/>
            <ownedInstanceRoles xsi:type="org.polarsys.capella.core.data.interaction:InstanceRole"
                id="b917a42e-4223-475b-b2d4-ed62f2f57edf" name="Signale au train l''autorisation de démarrer"
                representedInstance="#cd468610-1bc9-46b8-b111-aef755fcf780"/>
            <ownedMessages xsi:type="org.polarsys.capella.core.data.interaction:SequenceMessage"
                id="d936be1f-61b4-448d-91ae-3e7ba02e6524" name="Consigne d''arrêt trafic routier"
                kind="ASYNCHRONOUS_CALL" sendingEnd="#0d4df9e6-76bc-4c18-a1ea-a06a41350f38"
                receivingEnd="#ebede84b-83c0-48e6-8670-ea3fca898f25"/>
            <ownedMessages xsi:type="org.polarsys.capella.core.data.interaction:SequenceMessage"
                id="d57dfcdf-b217-4f49-8a2b-3c0d55ceec77" name="Interdiction de passer"
                kind="ASYNCHRONOUS_CALL" sendingEnd="#9d8997b3-e3b9-4718-a2fe-6e799fb77aa6"
                receivingEnd="#676a03bc-975f-4fcb-bf19-ddef242aba17"/>
            <ownedMessages xsi:type="org.polarsys.capella.core.data.interaction:SequenceMessage"
                id="980a93fd-e841-473b-bd78-b22747f32810" name="Information d''arrêt véhicule"
                kind="ASYNCHRONOUS_CALL" sendingEnd="#5677700c-6d56-40ca-8f90-216fb923115f"
                receivingEnd="#34b9e4f0-bc60-4932-858b-9da9f5c86f04"/>
            <ownedMessages xsi:type="org.polarsys.capella.core.data.interaction:SequenceMessage"
                id="acc21c50-53c6-469b-ac7b-6ab46f975f81" name="Consigne de départ de train"
                kind="ASYNCHRONOUS_CALL" sendingEnd="#528b3fec-d104-4241-ba19-24b9f88157a9"
                receivingEnd="#5ffb5610-2c3e-4afa-ab55-7064188743b1"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:MessageEnd"
                id="0d4df9e6-76bc-4c18-a1ea-a06a41350f38" name="Send Call Message Call"
                coveredInstanceRoles="#6e8acb73-9db9-4ad2-9de3-ea4d83e8273a" event="#2d0a5ee1-cc49-4f5b-bdc2-b71e2b84d784"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:MessageEnd"
                id="ebede84b-83c0-48e6-8670-ea3fca898f25" name="Receive Call Message Call"
                coveredInstanceRoles="#99fde12b-7393-4225-80ee-295c2b5c6155" event="#ac96a15a-0afe-4bb2-80f0-89d703b7ccb2"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:MessageEnd"
                id="9d8997b3-e3b9-4718-a2fe-6e799fb77aa6" name="Send Call Message Call"
                coveredInstanceRoles="#99fde12b-7393-4225-80ee-295c2b5c6155" event="#1bd1be69-fab2-431f-adef-e2ceb5df666e"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:MessageEnd"
                id="676a03bc-975f-4fcb-bf19-ddef242aba17" name="Receive Call Message Call"
                coveredInstanceRoles="#c7a77307-fa8d-4a56-9188-2d74a6fea8a2" event="#c37b1220-46ac-4fe1-b0a5-d9726565b4e7"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:ExecutionEnd"
                id="5d0e8572-7809-4a76-83d2-fc6edeb1b084" name="endExec" coveredInstanceRoles="#99fde12b-7393-4225-80ee-295c2b5c6155"
                event="#2d9731d6-698e-4e9d-b17f-ae01159cb277"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:MessageEnd"
                id="5677700c-6d56-40ca-8f90-216fb923115f" name="Send Call Message Call"
                coveredInstanceRoles="#c7a77307-fa8d-4a56-9188-2d74a6fea8a2" event="#e9da4a4e-2536-45b2-9883-2388df092e77"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:MessageEnd"
                id="34b9e4f0-bc60-4932-858b-9da9f5c86f04" name="Receive Call Message Call"
                coveredInstanceRoles="#6e8acb73-9db9-4ad2-9de3-ea4d83e8273a" event="#af234b9c-8be2-4277-ad5e-fd1cacf456dd"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:MessageEnd"
                id="528b3fec-d104-4241-ba19-24b9f88157a9" name="Send Call Message Call"
                coveredInstanceRoles="#6e8acb73-9db9-4ad2-9de3-ea4d83e8273a" event="#62885cdd-07a3-460b-a0aa-b3751a11176e"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:MessageEnd"
                id="5ffb5610-2c3e-4afa-ab55-7064188743b1" name="Receive Call Message Call"
                coveredInstanceRoles="#b917a42e-4223-475b-b2d4-ed62f2f57edf" event="#906a54e2-f170-49d5-9fe8-c750b07083ce"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:ExecutionEnd"
                id="69a13e2a-b0d6-4dc0-8086-33af26583a30" name="endExec" coveredInstanceRoles="#b917a42e-4223-475b-b2d4-ed62f2f57edf"
                event="#aa0505f7-81f0-4850-8d06-0144e633f158"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:ExecutionEnd"
                id="a2eb49f1-fc9a-4cae-8eda-395f6fb14b8d" name="endExec" coveredInstanceRoles="#6e8acb73-9db9-4ad2-9de3-ea4d83e8273a"
                event="#75c4bc93-ca85-46ec-a7c5-0577d433a6c8"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:ExecutionEnd"
                id="dd2f364e-4781-47ba-a96e-19f17e054236" name="endExec" coveredInstanceRoles="#c7a77307-fa8d-4a56-9188-2d74a6fea8a2"
                event="#ddb6f97a-80dd-48f3-bc6c-86fb8ad5a74f"/>
            <ownedTimeLapses xsi:type="org.polarsys.capella.core.data.interaction:Execution"
                id="29623f12-6f4f-4bc1-b95e-473594105221" start="#ebede84b-83c0-48e6-8670-ea3fca898f25"
                finish="#5d0e8572-7809-4a76-83d2-fc6edeb1b084"/>
            <ownedTimeLapses xsi:type="org.polarsys.capella.core.data.interaction:Execution"
                id="5b4e3448-172d-43ac-984d-e132bed0db4a" start="#676a03bc-975f-4fcb-bf19-ddef242aba17"
                finish="#dd2f364e-4781-47ba-a96e-19f17e054236"/>
            <ownedTimeLapses xsi:type="org.polarsys.capella.core.data.interaction:Execution"
                id="95db25c3-f0f2-408d-8869-4ec2e2e7e0d6" start="#34b9e4f0-bc60-4932-858b-9da9f5c86f04"
                finish="#a2eb49f1-fc9a-4cae-8eda-395f6fb14b8d"/>
            <ownedTimeLapses xsi:type="org.polarsys.capella.core.data.interaction:Execution"
                id="7fdc0306-6cf7-43b5-a6c6-212542490b0a" start="#5ffb5610-2c3e-4afa-ab55-7064188743b1"
                finish="#69a13e2a-b0d6-4dc0-8086-33af26583a30"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:EventSentOperation"
                id="2d0a5ee1-cc49-4f5b-bdc2-b71e2b84d784" operation="#4dfc75b2-23c9-4b6d-ae09-0f2032f1be1e"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:EventReceiptOperation"
                id="ac96a15a-0afe-4bb2-80f0-89d703b7ccb2" operation="#4dfc75b2-23c9-4b6d-ae09-0f2032f1be1e"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:ExecutionEvent"
                id="2d9731d6-698e-4e9d-b17f-ae01159cb277"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:EventSentOperation"
                id="1bd1be69-fab2-431f-adef-e2ceb5df666e" operation="#aecee461-f9b2-43f6-b7f5-23f3bb40eb3d"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:EventReceiptOperation"
                id="c37b1220-46ac-4fe1-b0a5-d9726565b4e7" operation="#aecee461-f9b2-43f6-b7f5-23f3bb40eb3d"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:ExecutionEvent"
                id="ddb6f97a-80dd-48f3-bc6c-86fb8ad5a74f"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:EventSentOperation"
                id="e9da4a4e-2536-45b2-9883-2388df092e77" operation="#9ddc7d46-775c-44c3-829a-d1715a47273f"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:EventReceiptOperation"
                id="af234b9c-8be2-4277-ad5e-fd1cacf456dd" operation="#9ddc7d46-775c-44c3-829a-d1715a47273f"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:ExecutionEvent"
                id="75c4bc93-ca85-46ec-a7c5-0577d433a6c8"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:EventSentOperation"
                id="62885cdd-07a3-460b-a0aa-b3751a11176e" operation="#61e16db8-cd53-47df-9654-76ff0019000a"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:EventReceiptOperation"
                id="906a54e2-f170-49d5-9fe8-c750b07083ce" operation="#61e16db8-cd53-47df-9654-76ff0019000a"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:ExecutionEvent"
                id="aa0505f7-81f0-4850-8d06-0144e633f158"/>
          </ownedScenarios>
          <ownedFunctionalChainAbstractCapabilityInvolvements xsi:type="org.polarsys.capella.core.data.interaction:FunctionalChainAbstractCapabilityInvolvement"
              id="c1176a3f-dea4-47ec-9e83-a5196785df31" involved="#9e84566b-e2ff-47f9-8f95-42603358cb4b"/>
          <ownedFunctionalChainAbstractCapabilityInvolvements xsi:type="org.polarsys.capella.core.data.interaction:FunctionalChainAbstractCapabilityInvolvement"
              id="384178f9-f072-4977-a6fc-9883f73c8d14" involved="#6a99bfd6-2a58-4fba-a253-fbad87474309"/>
          <ownedFunctionalChainAbstractCapabilityInvolvements xsi:type="org.polarsys.capella.core.data.interaction:FunctionalChainAbstractCapabilityInvolvement"
              id="b409fe8d-e677-4721-a836-a03ce49f345e" involved="#efe88080-59f0-4f21-92f9-d6b1dd313b7b"/>
          <ownedAbstractFunctionAbstractCapabilityInvolvements xsi:type="org.polarsys.capella.core.data.interaction:AbstractFunctionAbstractCapabilityInvolvement"
              id="3752b968-1c1f-433f-bc0c-9b1be44c199b" involved="#cd468610-1bc9-46b8-b111-aef755fcf780"/>
          <ownedAbstractFunctionAbstractCapabilityInvolvements xsi:type="org.polarsys.capella.core.data.interaction:AbstractFunctionAbstractCapabilityInvolvement"
              id="6d3cd543-02e7-4c77-91be-b46e0aad68a1" involved="#03327669-186a-4e17-8b02-2b9170d66d53"/>
          <ownedAbstractFunctionAbstractCapabilityInvolvements xsi:type="org.polarsys.capella.core.data.interaction:AbstractFunctionAbstractCapabilityInvolvement"
              id="4dec1656-db1f-406d-a528-57dd91e672c8" involved="#54b14102-3ad6-4a2e-bfe3-90c76680f870"/>
          <ownedAbstractFunctionAbstractCapabilityInvolvements xsi:type="org.polarsys.capella.core.data.interaction:AbstractFunctionAbstractCapabilityInvolvement"
              id="b6f549e3-9bee-4300-8864-3820fbf8b8bd" involved="#4827a14b-4396-4ee3-9734-8ae3c0db294b"/>
          <ownedAbstractCapabilityRealizations xsi:type="org.polarsys.capella.core.data.interaction:AbstractCapabilityRealization"
              id="54df8bf4-afef-4d12-a45b-b13e6f6c069c" targetElement="#f415a9d2-605a-4144-a414-4d948a2df02e"
              sourceElement="#4f919c8b-8b6d-4c47-b069-cedce2406259"/>
        </ownedCapabilities>
        <ownedCapabilities xsi:type="org.polarsys.capella.core.data.ctx:Capability"
            id="b262c123-2d37-487a-970e-b8dfa5599869" name="Contrôler et commander le trafic des trains au départ">
          <ownedFunctionalChainAbstractCapabilityInvolvements xsi:type="org.polarsys.capella.core.data.interaction:FunctionalChainAbstractCapabilityInvolvement"
              id="ab970f05-b179-4936-9949-a7a7688b0d9b" involved="#3c43ab9f-d00d-4f1c-a588-f5ccb18ce101"/>
          <ownedFunctionalChainAbstractCapabilityInvolvements xsi:type="org.polarsys.capella.core.data.interaction:FunctionalChainAbstractCapabilityInvolvement"
              id="fd152df1-7816-4567-9148-6aa9600475ea" involved="#39f5b423-5955-49e3-a1d7-9bc8b81d49e1"/>
          <ownedFunctionalChainAbstractCapabilityInvolvements xsi:type="org.polarsys.capella.core.data.interaction:FunctionalChainAbstractCapabilityInvolvement"
              id="40ff471b-6b2c-4ff1-983c-646b80c69e7f" involved="#bb356708-cda9-4680-9167-e0bf8dcc33a1"/>
          <ownedAbstractCapabilityRealizations xsi:type="org.polarsys.capella.core.data.interaction:AbstractCapabilityRealization"
              id="03e6540d-e951-4c46-9700-dc15b0ae6de5" targetElement="#682e78cd-f8b1-494f-b549-dc498bb677f9"
              sourceElement="#b262c123-2d37-487a-970e-b8dfa5599869"/>
        </ownedCapabilities>
        <ownedCapabilities xsi:type="org.polarsys.capella.core.data.ctx:Capability"
            id="f98263a7-c9cc-49d9-af52-f7dbd44b0ab7" name="Privilégier temporairement le trafic routier">
          <includes xsi:type="org.polarsys.capella.core.data.interaction:AbstractCapabilityInclude"
              id="5ebe45a8-87f5-4f64-81bd-d0ee28f551cc" included="#bd7778d7-7988-4cf1-87bd-45cd55bfecb2"/>
          <includes xsi:type="org.polarsys.capella.core.data.interaction:AbstractCapabilityInclude"
              id="fb2abcbb-f70a-4dbf-80a9-d88c9edc1f09" included="#b262c123-2d37-487a-970e-b8dfa5599869"/>
          <ownedAbstractCapabilityRealizations xsi:type="org.polarsys.capella.core.data.interaction:AbstractCapabilityRealization"
              id="f625b49a-5bcc-465e-90e5-954cfb743735" targetElement="#418bf356-2b2a-473a-9ad5-509d3fa3796c"
              sourceElement="#f98263a7-c9cc-49d9-af52-f7dbd44b0ab7"/>
        </ownedCapabilities>
        <ownedCapabilities xsi:type="org.polarsys.capella.core.data.ctx:Capability"
            id="94a788d0-1a5c-434a-ba24-e6047e8d8135" name="Sécuriser le départ d''un train">
          <ownedScenarios xsi:type="org.polarsys.capella.core.data.interaction:Scenario"
              id="9827ca6b-fbd8-4205-a2f3-6fcc1e28b05e" name="[ES] Départ de train nominal"
              kind="DATA_FLOW">
            <ownedInstanceRoles xsi:type="org.polarsys.capella.core.data.interaction:InstanceRole"
                id="06648d75-f158-4a42-9989-f5c2e6235c47" name="Véhicule routier"
                representedInstance="#be3248ec-c620-44e3-9681-2bd4833c7064"/>
            <ownedInstanceRoles xsi:type="org.polarsys.capella.core.data.interaction:InstanceRole"
                id="3f1bfa4c-ba72-4c22-9efd-12469a15e11a" name="Train en partance"
                representedInstance="#ebbd13be-082e-4194-9d3b-452ec5db186c"/>
            <ownedInstanceRoles xsi:type="org.polarsys.capella.core.data.interaction:InstanceRole"
                id="39e53ad2-d4b2-475c-8388-5717c4b892be" name="Système de régulation"
                representedInstance="#18b4bb32-9f1b-44be-a24b-26e04b6ebadd"/>
            <ownedInstanceRoles xsi:type="org.polarsys.capella.core.data.interaction:InstanceRole"
                id="fc41f93a-e44e-40c8-a253-32eb13c147bb" name="Système d''information Gare"
                representedInstance="#f375484d-677f-4fa2-a941-d0cfb05f23bc"/>
            <ownedMessages xsi:type="org.polarsys.capella.core.data.interaction:SequenceMessage"
                id="ef29b816-885d-4814-98a3-0e2aef8dfe8c" name="Ordre de préparation au départ"
                kind="ASYNCHRONOUS_CALL" sendingEnd="#571f0159-bdb4-435b-8915-2bfb8bcb7f2c"
                receivingEnd="#43f5762c-77e4-4b2f-8c46-f26066915fdc"/>
            <ownedMessages xsi:type="org.polarsys.capella.core.data.interaction:SequenceMessage"
                id="e2b30694-386e-4f94-96bb-ccb7e110a0d6" name="Information d''arrivée véhicule"
                kind="ASYNCHRONOUS_CALL" sendingEnd="#d7bfd569-094a-434a-b8cc-e458903147ff"
                receivingEnd="#497b0019-003c-441d-8921-ce8a5488299f"/>
            <ownedMessages xsi:type="org.polarsys.capella.core.data.interaction:SequenceMessage"
                id="72fdfa14-1009-4432-bfd6-eb6c6f50d4a7" name="Information train en partance"
                kind="ASYNCHRONOUS_CALL" sendingEnd="#19eeb1ec-1d42-4ebe-86d2-6e0d999bbfa0"
                receivingEnd="#02300ddc-b5bc-441e-a04f-5f9ba4db681a"/>
            <ownedMessages xsi:type="org.polarsys.capella.core.data.interaction:SequenceMessage"
                id="7422570b-11ae-41a9-a8fc-071cc5f52d9f" name="Interdiction de démarrer"
                kind="ASYNCHRONOUS_CALL" sendingEnd="#c8f4dd6c-932f-4fa7-b8dd-fec0874a02b1"
                receivingEnd="#dc201ae4-c0ea-4310-9df7-6ead69c62fe8"/>
            <ownedMessages xsi:type="org.polarsys.capella.core.data.interaction:SequenceMessage"
                id="b1ef8297-36cf-43df-b19a-a8f717275a07" name="Interdiction de passer"
                kind="ASYNCHRONOUS_CALL" sendingEnd="#027e27ce-3cfc-4487-a688-e60a6e26312f"
                receivingEnd="#2ed1d3d7-7a1f-43d8-baaa-f0f5e93e2e93"/>
            <ownedMessages xsi:type="org.polarsys.capella.core.data.interaction:SequenceMessage"
                id="831be7d1-d519-4ce9-959f-9facf0fbc4a7" name="Information d''arrêt véhicule"
                kind="ASYNCHRONOUS_CALL" sendingEnd="#0521721d-ac6e-42c8-b36b-7966a4ca9a38"
                receivingEnd="#3c3fa3b6-9b14-4e83-8ec4-99aeeb5ac444"/>
            <ownedMessages xsi:type="org.polarsys.capella.core.data.interaction:SequenceMessage"
                id="bc9c1eeb-c4b9-456f-b697-4bb3d1fc7992" name="Autorisation de départ du train"
                kind="ASYNCHRONOUS_CALL" sendingEnd="#5a8d84d0-68df-4e77-b892-558cddbbf232"
                receivingEnd="#106e5649-3a8e-43ce-bcf3-5bffbf7d3ce2"/>
            <ownedMessages xsi:type="org.polarsys.capella.core.data.interaction:SequenceMessage"
                id="33f17b32-12ca-449e-a2cb-d4be50102c8e" name="Information train passé"
                kind="ASYNCHRONOUS_CALL" sendingEnd="#d86a8f33-127f-421b-9c20-f860e405fe5e"
                receivingEnd="#7f0d9174-6325-41a6-b0a8-67c564352fe9"/>
            <ownedMessages xsi:type="org.polarsys.capella.core.data.interaction:SequenceMessage"
                id="d5fd8468-fa68-4fc3-bec7-19a4fcc9c46a" name="Interdiction de démarrer"
                kind="ASYNCHRONOUS_CALL" sendingEnd="#892f1913-e8b3-4cf1-9cef-33d5c23e3105"
                receivingEnd="#b86798fc-2022-49c1-b07c-ec77bbd2fab7"/>
            <ownedMessages xsi:type="org.polarsys.capella.core.data.interaction:SequenceMessage"
                id="071a1b55-8050-460d-9768-02306841bec1" name="Autorisation au véhicule de passer"
                kind="ASYNCHRONOUS_CALL" sendingEnd="#81f65e3b-35c2-4781-8445-b2518cb61a7b"
                receivingEnd="#e256994c-316e-4550-9068-01a7495a6272"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="52cc087b-901f-4dbc-88f4-a21eee2ab7d4" coveredInstanceRoles="#39e53ad2-d4b2-475c-8388-5717c4b892be"
                relatedAbstractState="#7ba44a02-edd6-47c7-97c4-296055be4e8d"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="e9aff6c0-e79e-4c48-8a41-f6d017c0f357" coveredInstanceRoles="#39e53ad2-d4b2-475c-8388-5717c4b892be"
                relatedAbstractState="#7ba44a02-edd6-47c7-97c4-296055be4e8d"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="2861cb86-0e22-40bf-a887-b603adaa95a6" name="Lance la procédure de départ"
                coveredInstanceRoles="#fc41f93a-e44e-40c8-a253-32eb13c147bb" relatedAbstractFunction="#3d6e5811-132e-4366-be8d-3c781083e703"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="58fe36e1-c2a3-49e7-9bb8-fa9eec297f32" name="Lance la procédure de départ"
                coveredInstanceRoles="#fc41f93a-e44e-40c8-a253-32eb13c147bb" relatedAbstractFunction="#3d6e5811-132e-4366-be8d-3c781083e703"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:MessageEnd"
                id="571f0159-bdb4-435b-8915-2bfb8bcb7f2c" name="Send Call Message Call"
                coveredInstanceRoles="#fc41f93a-e44e-40c8-a253-32eb13c147bb" event="#f0f0c6da-f55e-4f93-9847-d53f9636aacc"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:MessageEnd"
                id="43f5762c-77e4-4b2f-8c46-f26066915fdc" name="Receive Call Message Call"
                coveredInstanceRoles="#3f1bfa4c-ba72-4c22-9efd-12469a15e11a" event="#1a58ab96-40cd-4f78-834d-92dc00963784"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="6f5d0a61-8e48-444b-8bc3-01fcdd2e8f1f" name="Se prépare à partir"
                coveredInstanceRoles="#3f1bfa4c-ba72-4c22-9efd-12469a15e11a" relatedAbstractFunction="#ecf9a6e4-7eb7-4428-ab4f-f61e29c92624"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="8a2a8101-77e0-4b0a-b04f-b21dc9ac5018" name="Arrive près du passage"
                coveredInstanceRoles="#06648d75-f158-4a42-9989-f5c2e6235c47" relatedAbstractFunction="#817a5ef2-28cd-4fb4-944f-15300d47014b"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="67d57f3c-cbf9-44eb-9143-aacc98b2a7c4" name="Se prépare à partir"
                coveredInstanceRoles="#3f1bfa4c-ba72-4c22-9efd-12469a15e11a" relatedAbstractFunction="#ecf9a6e4-7eb7-4428-ab4f-f61e29c92624"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:ExecutionEnd"
                id="de13d3d2-f88a-4965-bc21-625573796357" name="endExec" coveredInstanceRoles="#3f1bfa4c-ba72-4c22-9efd-12469a15e11a"
                event="#d4e90677-cf9a-484d-86e2-a045bf4b531b"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="a66e7cf9-dfbb-487d-9bfa-e166439070a3" name="Arrive près du passage"
                coveredInstanceRoles="#06648d75-f158-4a42-9989-f5c2e6235c47" relatedAbstractFunction="#817a5ef2-28cd-4fb4-944f-15300d47014b"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:MessageEnd"
                id="d7bfd569-094a-434a-b8cc-e458903147ff" name="Send Call Message Call"
                coveredInstanceRoles="#06648d75-f158-4a42-9989-f5c2e6235c47" event="#424ccf85-d591-481a-a9ea-80885a0f7038"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:MessageEnd"
                id="497b0019-003c-441d-8921-ce8a5488299f" name="Receive Call Message Call"
                coveredInstanceRoles="#39e53ad2-d4b2-475c-8388-5717c4b892be" event="#a7cde8c6-b8a7-42df-be86-df2c73254ba5"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:ExecutionEnd"
                id="72c01b92-f23e-41aa-910b-2b764264d20c" name="endExec" coveredInstanceRoles="#39e53ad2-d4b2-475c-8388-5717c4b892be"
                event="#bf95b67b-37eb-438d-ba94-afa917ac710c"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:MessageEnd"
                id="19eeb1ec-1d42-4ebe-86d2-6e0d999bbfa0" name="Send Call Message Call"
                coveredInstanceRoles="#fc41f93a-e44e-40c8-a253-32eb13c147bb" event="#44f0cf64-1912-4d45-ae0c-1f88ef124758"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:MessageEnd"
                id="02300ddc-b5bc-441e-a04f-5f9ba4db681a" name="Receive Call Message Call"
                coveredInstanceRoles="#39e53ad2-d4b2-475c-8388-5717c4b892be" event="#d980d364-1dd5-4907-84ab-91a1148d36e8"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="b352c10d-ea2b-4ac4-8ea8-4ad06e987fb5" coveredInstanceRoles="#39e53ad2-d4b2-475c-8388-5717c4b892be"
                relatedAbstractState="#d5a7fe39-9ff0-455e-ae89-8d886403b54d"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="28b3e094-19bb-476c-99ef-2c2e000854f6" coveredInstanceRoles="#39e53ad2-d4b2-475c-8388-5717c4b892be"
                relatedAbstractState="#d5a7fe39-9ff0-455e-ae89-8d886403b54d"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="0510c728-0b8e-45cb-b0fb-a6bf59bcce3f" name="Ferme le signal de départ de train"
                coveredInstanceRoles="#39e53ad2-d4b2-475c-8388-5717c4b892be" relatedAbstractFunction="#fa59b83b-f039-44a7-98f6-a3bb04639b20"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="8e4405f4-69ac-4657-bf28-7278bcbb6d5b" name="Ferme le signal de départ de train"
                coveredInstanceRoles="#39e53ad2-d4b2-475c-8388-5717c4b892be" relatedAbstractFunction="#fa59b83b-f039-44a7-98f6-a3bb04639b20"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:MessageEnd"
                id="c8f4dd6c-932f-4fa7-b8dd-fec0874a02b1" name="Send Call Message Call"
                coveredInstanceRoles="#39e53ad2-d4b2-475c-8388-5717c4b892be" event="#f3755883-04de-496f-b5da-a23b909d2af9"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:MessageEnd"
                id="dc201ae4-c0ea-4310-9df7-6ead69c62fe8" name="Receive Call Message Call"
                coveredInstanceRoles="#3f1bfa4c-ba72-4c22-9efd-12469a15e11a" event="#4835610a-546b-4706-8cc6-d7a1ad2e5cd4"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="b7618ce2-f791-4668-ba20-5005878d41e1" name="Attend l''autorisation de départ"
                coveredInstanceRoles="#3f1bfa4c-ba72-4c22-9efd-12469a15e11a" relatedAbstractFunction="#f845f6d1-b10a-4cb2-b8ad-4cf46da4b0eb"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="37a12622-126f-4308-9d23-fa3e6aef331b" name="Vérifie l''absence de véhicule sur le passage"
                coveredInstanceRoles="#39e53ad2-d4b2-475c-8388-5717c4b892be" relatedAbstractFunction="#126ece23-ef3b-4fe0-bec4-b3dbd903bfa6"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="2e312d0f-2bc0-4f32-bcd3-bc38d2b78837" name="Attend l''autorisation de départ"
                coveredInstanceRoles="#3f1bfa4c-ba72-4c22-9efd-12469a15e11a" relatedAbstractFunction="#f845f6d1-b10a-4cb2-b8ad-4cf46da4b0eb"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="41c1ead4-66fb-4981-84f8-2d8ad99c751b" name="Vérifie l''absence de véhicule sur le passage"
                coveredInstanceRoles="#39e53ad2-d4b2-475c-8388-5717c4b892be" relatedAbstractFunction="#126ece23-ef3b-4fe0-bec4-b3dbd903bfa6"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="409af3ea-56cd-4f3e-af6e-dd0cd395ca9a" name="Ferme les barrrières de sécurité"
                coveredInstanceRoles="#39e53ad2-d4b2-475c-8388-5717c4b892be" relatedAbstractFunction="#4827a14b-4396-4ee3-9734-8ae3c0db294b"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="08a7849c-d886-46c9-8eab-77a551963adc" name="Ferme les barrrières de sécurité"
                coveredInstanceRoles="#39e53ad2-d4b2-475c-8388-5717c4b892be" relatedAbstractFunction="#4827a14b-4396-4ee3-9734-8ae3c0db294b"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:MessageEnd"
                id="027e27ce-3cfc-4487-a688-e60a6e26312f" name="Send Call Message Call"
                coveredInstanceRoles="#39e53ad2-d4b2-475c-8388-5717c4b892be" event="#f2bfbe0b-52ab-463b-bfe1-db47c659a8d8"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:MessageEnd"
                id="2ed1d3d7-7a1f-43d8-baaa-f0f5e93e2e93" name="Receive Call Message Call"
                coveredInstanceRoles="#06648d75-f158-4a42-9989-f5c2e6235c47" event="#d0724eaa-c69f-4044-ac18-a0133c89321a"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="3166a133-bcc7-4e43-a026-7e9252748515" name="S''arrête avant le passage"
                coveredInstanceRoles="#06648d75-f158-4a42-9989-f5c2e6235c47" relatedAbstractFunction="#03327669-186a-4e17-8b02-2b9170d66d53"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="6bcbecfe-d9a9-4a6d-aee8-eeca389a7b57" name="S''arrête avant le passage"
                coveredInstanceRoles="#06648d75-f158-4a42-9989-f5c2e6235c47" relatedAbstractFunction="#03327669-186a-4e17-8b02-2b9170d66d53"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:MessageEnd"
                id="0521721d-ac6e-42c8-b36b-7966a4ca9a38" name="Send Call Message Call"
                coveredInstanceRoles="#06648d75-f158-4a42-9989-f5c2e6235c47" event="#7e3e6c1a-12e6-4371-a1e3-9b537a16a32c"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:MessageEnd"
                id="3c3fa3b6-9b14-4e83-8ec4-99aeeb5ac444" name="Receive Call Message Call"
                coveredInstanceRoles="#39e53ad2-d4b2-475c-8388-5717c4b892be" event="#03056da4-207f-4108-849b-7667981c24ea"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="26762e83-d5ec-4744-b383-014576afd795" name="Ouvre le signal de départ de train"
                coveredInstanceRoles="#39e53ad2-d4b2-475c-8388-5717c4b892be" relatedAbstractFunction="#cd468610-1bc9-46b8-b111-aef755fcf780"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="16db2166-1d0b-4527-819a-4892014ce8f9" name="Ouvre le signal de départ de train"
                coveredInstanceRoles="#39e53ad2-d4b2-475c-8388-5717c4b892be" relatedAbstractFunction="#cd468610-1bc9-46b8-b111-aef755fcf780"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:ExecutionEnd"
                id="d683d610-e9eb-4373-a5ce-cac020ea0d3f" name="endExec" coveredInstanceRoles="#39e53ad2-d4b2-475c-8388-5717c4b892be"
                event="#baa27ba3-1979-4691-a76e-0c1ec9e3cf7f"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:MessageEnd"
                id="5a8d84d0-68df-4e77-b892-558cddbbf232" name="Send Call Message Call"
                coveredInstanceRoles="#39e53ad2-d4b2-475c-8388-5717c4b892be" event="#fc151e96-8063-47ad-b5be-440b036f6822"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:MessageEnd"
                id="106e5649-3a8e-43ce-bcf3-5bffbf7d3ce2" name="Receive Call Message Call"
                coveredInstanceRoles="#3f1bfa4c-ba72-4c22-9efd-12469a15e11a" event="#17ce3cd3-10bf-47b9-8d45-8ea599a5b991"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="19a791a9-df73-4f97-9571-be6e35187503" name="Démarre et franchit le passage"
                coveredInstanceRoles="#3f1bfa4c-ba72-4c22-9efd-12469a15e11a" relatedAbstractFunction="#cc600fc2-e6af-486c-9346-69b49cc8cb21"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="a24e1cf9-326a-4807-9bd7-c8d033c81c02" name="Démarre et franchit le passage"
                coveredInstanceRoles="#3f1bfa4c-ba72-4c22-9efd-12469a15e11a" relatedAbstractFunction="#cc600fc2-e6af-486c-9346-69b49cc8cb21"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:MessageEnd"
                id="d86a8f33-127f-421b-9c20-f860e405fe5e" name="Send Call Message Call"
                coveredInstanceRoles="#3f1bfa4c-ba72-4c22-9efd-12469a15e11a" event="#a28ce001-2a49-4c45-9ba1-0b1071ee3f15"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:MessageEnd"
                id="7f0d9174-6325-41a6-b0a8-67c564352fe9" name="Receive Call Message Call"
                coveredInstanceRoles="#39e53ad2-d4b2-475c-8388-5717c4b892be" event="#c813031c-adfc-470d-adf9-9e40a8011998"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:ExecutionEnd"
                id="bbd2ad56-f422-4c87-9d08-db25dfcd86cd" name="endExec" coveredInstanceRoles="#3f1bfa4c-ba72-4c22-9efd-12469a15e11a"
                event="#970353d1-cd3a-411d-b810-3a1879cc46a4"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="b7dd2e8f-51b4-41af-ab90-c045147ab824" name="Détecte le franchissement par le train partant"
                coveredInstanceRoles="#39e53ad2-d4b2-475c-8388-5717c4b892be" relatedAbstractFunction="#d35e2a23-cd82-487f-a8e9-ca58eca0e547"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="c0e7066a-a58d-47d9-900f-bae333391064" name="Détecte le franchissement par le train partant"
                coveredInstanceRoles="#39e53ad2-d4b2-475c-8388-5717c4b892be" relatedAbstractFunction="#d35e2a23-cd82-487f-a8e9-ca58eca0e547"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:ExecutionEnd"
                id="f4fd48a1-3578-4e54-89c2-a0b2d61bdaf9" name="endExec" coveredInstanceRoles="#39e53ad2-d4b2-475c-8388-5717c4b892be"
                event="#00b92704-3eeb-4b6f-85f8-9c9fc5347a8f"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="3f9c4980-4882-443a-bc3f-9eb7b0db7c0e" name="Ferme le signal de départ de train"
                coveredInstanceRoles="#39e53ad2-d4b2-475c-8388-5717c4b892be" relatedAbstractFunction="#fa59b83b-f039-44a7-98f6-a3bb04639b20"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="0bcc73cf-d978-4689-90fd-80bfdf7ecdda" name="Ferme le signal de départ de train"
                coveredInstanceRoles="#39e53ad2-d4b2-475c-8388-5717c4b892be" relatedAbstractFunction="#fa59b83b-f039-44a7-98f6-a3bb04639b20"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:MessageEnd"
                id="892f1913-e8b3-4cf1-9cef-33d5c23e3105" name="Send Call Message Call"
                coveredInstanceRoles="#39e53ad2-d4b2-475c-8388-5717c4b892be" event="#d5ffdf7c-77ec-4fbb-b040-d202a2cf2e2b"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:MessageEnd"
                id="b86798fc-2022-49c1-b07c-ec77bbd2fab7" name="Receive Call Message Call"
                coveredInstanceRoles="#3f1bfa4c-ba72-4c22-9efd-12469a15e11a" event="#070c60a8-7da1-4902-9f10-9f2488c96b01"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="1868bf1e-21f2-4928-b126-733ba941347a" name="Ouvre les barrières de sécurité"
                coveredInstanceRoles="#39e53ad2-d4b2-475c-8388-5717c4b892be" relatedAbstractFunction="#610efa2d-22f1-4d5c-a058-0287baa9af70"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:ExecutionEnd"
                id="515b34d7-2b8a-421c-aefa-669874bd3e3f" name="endExec" coveredInstanceRoles="#3f1bfa4c-ba72-4c22-9efd-12469a15e11a"
                event="#29072ca4-0d0b-4592-b269-31f068634525"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="32288776-ac07-47af-89da-47edb231acde" name="Ouvre les barrières de sécurité"
                coveredInstanceRoles="#39e53ad2-d4b2-475c-8388-5717c4b892be" relatedAbstractFunction="#610efa2d-22f1-4d5c-a058-0287baa9af70"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:MessageEnd"
                id="81f65e3b-35c2-4781-8445-b2518cb61a7b" name="Send Call Message Call"
                coveredInstanceRoles="#39e53ad2-d4b2-475c-8388-5717c4b892be" event="#c1315398-60e7-48f3-8536-b9caad8c0ce1"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:MessageEnd"
                id="e256994c-316e-4550-9068-01a7495a6272" name="Receive Call Message Call"
                coveredInstanceRoles="#06648d75-f158-4a42-9989-f5c2e6235c47" event="#c24d72fc-0039-4a75-b7c7-2dd5b846a6b8"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="3e85c394-662c-4276-bbd1-a9b49d5a1504" name="Franchit le passage"
                coveredInstanceRoles="#06648d75-f158-4a42-9989-f5c2e6235c47" relatedAbstractFunction="#842ef64e-a2a8-4f33-bfcc-f5748dcc4bff"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="86656245-ea83-4ce0-ae12-32e73511cb1e" coveredInstanceRoles="#39e53ad2-d4b2-475c-8388-5717c4b892be"
                relatedAbstractState="#7ba44a02-edd6-47c7-97c4-296055be4e8d"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="e6f8366b-bf8c-43cd-a90f-d0938096f121" coveredInstanceRoles="#39e53ad2-d4b2-475c-8388-5717c4b892be"
                relatedAbstractState="#7ba44a02-edd6-47c7-97c4-296055be4e8d"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="e5b5ec6d-66b8-4eea-b740-aac266853b81" name="Franchit le passage"
                coveredInstanceRoles="#06648d75-f158-4a42-9989-f5c2e6235c47" relatedAbstractFunction="#842ef64e-a2a8-4f33-bfcc-f5748dcc4bff"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:ExecutionEnd"
                id="9686a02d-99da-411e-a15d-b87b2b6fcfac" name="endExec" coveredInstanceRoles="#39e53ad2-d4b2-475c-8388-5717c4b892be"
                event="#bc4b60f0-b353-4951-b9a7-07d4a44818d6"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:ExecutionEnd"
                id="61a2819c-3131-4714-8268-0dd673dced98" name="endExec" coveredInstanceRoles="#3f1bfa4c-ba72-4c22-9efd-12469a15e11a"
                event="#5d69d522-f2ff-4a03-8eba-5074954df091"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:ExecutionEnd"
                id="6979b963-c2ff-4cfb-9c0d-15a93e95c44e" name="endExec" coveredInstanceRoles="#06648d75-f158-4a42-9989-f5c2e6235c47"
                event="#fabb88a8-9682-494d-a2d6-6df67dad2e41"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:ExecutionEnd"
                id="a0f7ef93-bbc4-4a8a-81ba-191cbd4cb695" name="endExec" coveredInstanceRoles="#06648d75-f158-4a42-9989-f5c2e6235c47"
                event="#46e1260f-0274-4803-99e2-2fdc1474c68f"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="42445e89-ba9c-435b-a427-377aa7296df0" name="S''arrête avant le passage"
                coveredInstanceRoles="#06648d75-f158-4a42-9989-f5c2e6235c47" relatedAbstractFunction="#03327669-186a-4e17-8b02-2b9170d66d53"/>
            <ownedInteractionFragments xsi:type="org.polarsys.capella.core.data.interaction:InteractionState"
                id="410504dd-ac2f-4f5a-b810-ac397aa73678" name="S''arrête avant le passage"
                coveredInstanceRoles="#06648d75-f158-4a42-9989-f5c2e6235c47" relatedAbstractFunction="#03327669-186a-4e17-8b02-2b9170d66d53"/>
            <ownedTimeLapses xsi:type="org.polarsys.capella.core.data.interaction:StateFragment"
                id="ea7e313d-ffe6-4d5e-b967-26d846329bd6" start="#8a2a8101-77e0-4b0a-b04f-b21dc9ac5018"
                finish="#a66e7cf9-dfbb-487d-9bfa-e166439070a3" relatedAbstractFunction="#817a5ef2-28cd-4fb4-944f-15300d47014b"/>
            <ownedTimeLapses xsi:type="org.polarsys.capella.core.data.interaction:StateFragment"
                id="692ab359-e80b-4c37-b194-d575c283588d" start="#6f5d0a61-8e48-444b-8bc3-01fcdd2e8f1f"
                finish="#67d57f3c-cbf9-44eb-9143-aacc98b2a7c4" relatedAbstractFunction="#ecf9a6e4-7eb7-4428-ab4f-f61e29c92624"/>
            <ownedTimeLapses xsi:type="org.polarsys.capella.core.data.interaction:StateFragment"
                id="ebbf4ae4-3633-4b31-a773-4e6ac5f2d2f5" start="#b7618ce2-f791-4668-ba20-5005878d41e1"
                finish="#2e312d0f-2bc0-4f32-bcd3-bc38d2b78837" relatedAbstractFunction="#f845f6d1-b10a-4cb2-b8ad-4cf46da4b0eb"/>
            <ownedTimeLapses xsi:type="org.polarsys.capella.core.data.interaction:StateFragment"
                id="5ac982af-5811-4ba9-bc78-2692e545732f" start="#2861cb86-0e22-40bf-a887-b603adaa95a6"
                finish="#58fe36e1-c2a3-49e7-9bb8-fa9eec297f32" relatedAbstractFunction="#3d6e5811-132e-4366-be8d-3c781083e703"/>
            <ownedTimeLapses xsi:type="org.polarsys.capella.core.data.interaction:StateFragment"
                id="673cc729-1dfa-4211-805e-3d54ba994137" start="#37a12622-126f-4308-9d23-fa3e6aef331b"
                finish="#41c1ead4-66fb-4981-84f8-2d8ad99c751b" relatedAbstractFunction="#126ece23-ef3b-4fe0-bec4-b3dbd903bfa6"/>
            <ownedTimeLapses xsi:type="org.polarsys.capella.core.data.interaction:StateFragment"
                id="affb75a5-a242-4105-b040-8a4245f34453" start="#409af3ea-56cd-4f3e-af6e-dd0cd395ca9a"
                finish="#08a7849c-d886-46c9-8eab-77a551963adc" relatedAbstractFunction="#4827a14b-4396-4ee3-9734-8ae3c0db294b"/>
            <ownedTimeLapses xsi:type="org.polarsys.capella.core.data.interaction:StateFragment"
                id="85f18fb1-33e8-43d4-9224-4eb56d35cfc6" start="#26762e83-d5ec-4744-b383-014576afd795"
                finish="#16db2166-1d0b-4527-819a-4892014ce8f9" relatedAbstractFunction="#cd468610-1bc9-46b8-b111-aef755fcf780"/>
            <ownedTimeLapses xsi:type="org.polarsys.capella.core.data.interaction:StateFragment"
                id="0e876f12-08c0-454c-bb26-a2fded62d1b9" start="#b7dd2e8f-51b4-41af-ab90-c045147ab824"
                finish="#c0e7066a-a58d-47d9-900f-bae333391064" relatedAbstractFunction="#d35e2a23-cd82-487f-a8e9-ca58eca0e547"/>
            <ownedTimeLapses xsi:type="org.polarsys.capella.core.data.interaction:StateFragment"
                id="b42692ed-1336-44c1-88b4-0653e3203ed3" start="#1868bf1e-21f2-4928-b126-733ba941347a"
                finish="#32288776-ac07-47af-89da-47edb231acde" relatedAbstractFunction="#610efa2d-22f1-4d5c-a058-0287baa9af70"/>
            <ownedTimeLapses xsi:type="org.polarsys.capella.core.data.interaction:StateFragment"
                id="54fc92ec-80e1-40fc-a758-e37e5a84cd42" start="#19a791a9-df73-4f97-9571-be6e35187503"
                finish="#a24e1cf9-326a-4807-9bd7-c8d033c81c02" relatedAbstractFunction="#cc600fc2-e6af-486c-9346-69b49cc8cb21"/>
            <ownedTimeLapses xsi:type="org.polarsys.capella.core.data.interaction:StateFragment"
                id="0505d26b-687f-460c-9534-57f08776cceb" start="#3166a133-bcc7-4e43-a026-7e9252748515"
                finish="#6bcbecfe-d9a9-4a6d-aee8-eeca389a7b57" relatedAbstractFunction="#03327669-186a-4e17-8b02-2b9170d66d53"/>
            <ownedTimeLapses xsi:type="org.polarsys.capella.core.data.interaction:StateFragment"
                id="5a216119-c21c-4f75-83ae-3631b380f5ff" start="#3e85c394-662c-4276-bbd1-a9b49d5a1504"
                finish="#e5b5ec6d-66b8-4eea-b740-aac266853b81" relatedAbstractFunction="#842ef64e-a2a8-4f33-bfcc-f5748dcc4bff"/>
            <ownedTimeLapses xsi:type="org.polarsys.capella.core.data.interaction:Execution"
                id="0e5175e5-41f7-484c-960c-0a150e090e0b" start="#02300ddc-b5bc-441e-a04f-5f9ba4db681a"
                finish="#9686a02d-99da-411e-a15d-b87b2b6fcfac"/>
            <ownedTimeLapses xsi:type="org.polarsys.capella.core.data.interaction:StateFragment"
                id="38c7afbe-61b3-493a-997f-0c96fadff81e" start="#0510c728-0b8e-45cb-b0fb-a6bf59bcce3f"
                finish="#8e4405f4-69ac-4657-bf28-7278bcbb6d5b" relatedAbstractFunction="#fa59b83b-f039-44a7-98f6-a3bb04639b20"/>
            <ownedTimeLapses xsi:type="org.polarsys.capella.core.data.interaction:Execution"
                id="0b0028b4-15bb-4c55-8c99-1ade31b7d209" start="#dc201ae4-c0ea-4310-9df7-6ead69c62fe8"
                finish="#61a2819c-3131-4714-8268-0dd673dced98"/>
            <ownedTimeLapses xsi:type="org.polarsys.capella.core.data.interaction:Execution"
                id="e36b8a0b-98d8-4df8-a75e-360773079968" start="#497b0019-003c-441d-8921-ce8a5488299f"
                finish="#72c01b92-f23e-41aa-910b-2b764264d20c"/>
            <ownedTimeLapses xsi:type="org.polarsys.capella.core.data.interaction:Execution"
                id="5f218145-784d-4a0f-bf1d-c1501c9688dc" start="#2ed1d3d7-7a1f-43d8-baaa-f0f5e93e2e93"
                finish="#a0f7ef93-bbc4-4a8a-81ba-191cbd4cb695"/>
            <ownedTimeLapses xsi:type="org.polarsys.capella.core.data.interaction:Execution"
                id="17b4580d-908e-4617-bb50-0fa7bb65495e" start="#106e5649-3a8e-43ce-bcf3-5bffbf7d3ce2"
                finish="#bbd2ad56-f422-4c87-9d08-db25dfcd86cd"/>
            <ownedTimeLapses xsi:type="org.polarsys.capella.core.data.interaction:Execution"
                id="a522d97e-2ec9-4e16-98c8-4c1f435032e2" start="#7f0d9174-6325-41a6-b0a8-67c564352fe9"
                finish="#f4fd48a1-3578-4e54-89c2-a0b2d61bdaf9"/>
            <ownedTimeLapses xsi:type="org.polarsys.capella.core.data.interaction:StateFragment"
                id="8e2b8546-008d-4071-88c3-bf8a2750d8e1" start="#3f9c4980-4882-443a-bc3f-9eb7b0db7c0e"
                finish="#0bcc73cf-d978-4689-90fd-80bfdf7ecdda" relatedAbstractFunction="#fa59b83b-f039-44a7-98f6-a3bb04639b20"/>
            <ownedTimeLapses xsi:type="org.polarsys.capella.core.data.interaction:Execution"
                id="eed484e4-b663-41a2-8da0-7fc334dd1e37" start="#b86798fc-2022-49c1-b07c-ec77bbd2fab7"
                finish="#515b34d7-2b8a-421c-aefa-669874bd3e3f"/>
            <ownedTimeLapses xsi:type="org.polarsys.capella.core.data.interaction:Execution"
                id="38625cb0-fb65-4b28-990a-bd96cc707c1e" start="#e256994c-316e-4550-9068-01a7495a6272"
                finish="#6979b963-c2ff-4cfb-9c0d-15a93e95c44e"/>
            <ownedTimeLapses xsi:type="org.polarsys.capella.core.data.interaction:Execution"
                id="5583f006-b161-40e6-ab02-fe3cfa19c859" start="#43f5762c-77e4-4b2f-8c46-f26066915fdc"
                finish="#de13d3d2-f88a-4965-bc21-625573796357"/>
            <ownedTimeLapses xsi:type="org.polarsys.capella.core.data.interaction:StateFragment"
                id="ebfc88c0-8cc2-4ea5-9bfb-c38700430c10" start="#52cc087b-901f-4dbc-88f4-a21eee2ab7d4"
                finish="#e9aff6c0-e79e-4c48-8a41-f6d017c0f357" relatedAbstractState="#7ba44a02-edd6-47c7-97c4-296055be4e8d"/>
            <ownedTimeLapses xsi:type="org.polarsys.capella.core.data.interaction:StateFragment"
                id="bc11cdb3-16a6-4674-b393-32546a9bda8e" start="#b352c10d-ea2b-4ac4-8ea8-4ad06e987fb5"
                finish="#28b3e094-19bb-476c-99ef-2c2e000854f6" relatedAbstractState="#d5a7fe39-9ff0-455e-ae89-8d886403b54d"/>
            <ownedTimeLapses xsi:type="org.polarsys.capella.core.data.interaction:StateFragment"
                id="ef09b012-03e5-4749-8ace-7572884bd627" start="#86656245-ea83-4ce0-ae12-32e73511cb1e"
                finish="#e6f8366b-bf8c-43cd-a90f-d0938096f121" relatedAbstractState="#7ba44a02-edd6-47c7-97c4-296055be4e8d"/>
            <ownedTimeLapses xsi:type="org.polarsys.capella.core.data.interaction:Execution"
                id="e2f5a7c4-ea98-42f2-8a27-2e05d8b07663" start="#3c3fa3b6-9b14-4e83-8ec4-99aeeb5ac444"
                finish="#d683d610-e9eb-4373-a5ce-cac020ea0d3f"/>
            <ownedTimeLapses xsi:type="org.polarsys.capella.core.data.interaction:StateFragment"
                id="3bf8dc77-7587-4283-b493-73e41b27fc06" start="#42445e89-ba9c-435b-a427-377aa7296df0"
                finish="#410504dd-ac2f-4f5a-b810-ac397aa73678" relatedAbstractFunction="#03327669-186a-4e17-8b02-2b9170d66d53"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:EventSentOperation"
                id="44f0cf64-1912-4d45-ae0c-1f88ef124758" operation="#54522c92-70ed-4342-ad53-e59491f698b1"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:EventReceiptOperation"
                id="d980d364-1dd5-4907-84ab-91a1148d36e8" operation="#54522c92-70ed-4342-ad53-e59491f698b1"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:ExecutionEvent"
                id="bc4b60f0-b353-4951-b9a7-07d4a44818d6"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:EventSentOperation"
                id="f3755883-04de-496f-b5da-a23b909d2af9" operation="#f1b96c69-4b60-4d9e-97c0-db56e45a0f98"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:EventReceiptOperation"
                id="4835610a-546b-4706-8cc6-d7a1ad2e5cd4" operation="#f1b96c69-4b60-4d9e-97c0-db56e45a0f98"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:ExecutionEvent"
                id="5d69d522-f2ff-4a03-8eba-5074954df091"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:EventSentOperation"
                id="424ccf85-d591-481a-a9ea-80885a0f7038" operation="#55e467aa-939b-493a-89c8-9a80b40f8a8b"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:EventReceiptOperation"
                id="a7cde8c6-b8a7-42df-be86-df2c73254ba5" operation="#55e467aa-939b-493a-89c8-9a80b40f8a8b"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:ExecutionEvent"
                id="bf95b67b-37eb-438d-ba94-afa917ac710c"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:EventSentOperation"
                id="f2bfbe0b-52ab-463b-bfe1-db47c659a8d8" operation="#aecee461-f9b2-43f6-b7f5-23f3bb40eb3d"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:EventReceiptOperation"
                id="d0724eaa-c69f-4044-ac18-a0133c89321a" operation="#aecee461-f9b2-43f6-b7f5-23f3bb40eb3d"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:ExecutionEvent"
                id="46e1260f-0274-4803-99e2-2fdc1474c68f"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:EventSentOperation"
                id="fc151e96-8063-47ad-b5be-440b036f6822" operation="#fcb06ea3-07ed-42aa-8fa1-d3e9e609aa0e"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:EventReceiptOperation"
                id="17ce3cd3-10bf-47b9-8d45-8ea599a5b991" operation="#fcb06ea3-07ed-42aa-8fa1-d3e9e609aa0e"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:ExecutionEvent"
                id="970353d1-cd3a-411d-b810-3a1879cc46a4"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:EventSentOperation"
                id="a28ce001-2a49-4c45-9ba1-0b1071ee3f15" operation="#1a284f4c-e169-4d5f-94ae-f37e7cd9e14e"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:EventReceiptOperation"
                id="c813031c-adfc-470d-adf9-9e40a8011998" operation="#1a284f4c-e169-4d5f-94ae-f37e7cd9e14e"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:ExecutionEvent"
                id="00b92704-3eeb-4b6f-85f8-9c9fc5347a8f"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:EventSentOperation"
                id="d5ffdf7c-77ec-4fbb-b040-d202a2cf2e2b" operation="#f1b96c69-4b60-4d9e-97c0-db56e45a0f98"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:EventReceiptOperation"
                id="070c60a8-7da1-4902-9f10-9f2488c96b01" operation="#f1b96c69-4b60-4d9e-97c0-db56e45a0f98"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:ExecutionEvent"
                id="29072ca4-0d0b-4592-b269-31f068634525"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:EventSentOperation"
                id="c1315398-60e7-48f3-8536-b9caad8c0ce1" operation="#2f3e16b5-9c29-40a2-aaad-0175954d52e7"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:EventReceiptOperation"
                id="c24d72fc-0039-4a75-b7c7-2dd5b846a6b8" operation="#2f3e16b5-9c29-40a2-aaad-0175954d52e7"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:ExecutionEvent"
                id="fabb88a8-9682-494d-a2d6-6df67dad2e41"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:EventSentOperation"
                id="f0f0c6da-f55e-4f93-9847-d53f9636aacc" operation="#def080bc-3288-4e87-af04-901954ecd24f"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:EventReceiptOperation"
                id="1a58ab96-40cd-4f78-834d-92dc00963784" operation="#def080bc-3288-4e87-af04-901954ecd24f"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:ExecutionEvent"
                id="d4e90677-cf9a-484d-86e2-a045bf4b531b"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:EventSentOperation"
                id="7e3e6c1a-12e6-4371-a1e3-9b537a16a32c" operation="#9ddc7d46-775c-44c3-829a-d1715a47273f"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:EventReceiptOperation"
                id="03056da4-207f-4108-849b-7667981c24ea" operation="#9ddc7d46-775c-44c3-829a-d1715a47273f"/>
            <ownedEvents xsi:type="org.polarsys.capella.core.data.interaction:ExecutionEvent"
                id="baa27ba3-1979-4691-a76e-0c1ec9e3cf7f"/>
            <ownedScenarioRealization xsi:type="org.polarsys.capella.core.data.interaction:ScenarioRealization"
                id="ea1d9eb5-65a6-410b-9696-9e1011af58b4" targetElement="#d4400442-0ee7-4266-a7f3-763045871ca2"
                sourceElement="#9827ca6b-fbd8-4205-a2f3-6fcc1e28b05e"/>
          </ownedScenarios>
          <includes xsi:type="org.polarsys.capella.core.data.interaction:AbstractCapabilityInclude"
              id="b5e9f14b-cc4c-4ae6-8264-ee2ca054df12" included="#b262c123-2d37-487a-970e-b8dfa5599869"/>
          <includes xsi:type="org.polarsys.capella.core.data.interaction:AbstractCapabilityInclude"
              id="446b1c19-ceca-42c5-af20-a25d4362a873" included="#4f919c8b-8b6d-4c47-b069-cedce2406259"/>
          <ownedCapabilityInvolvements xsi:type="org.polarsys.capella.core.data.ctx:CapabilityInvolvement"
              id="36aa6822-ae8b-4265-9082-5042f8008caf" involved="#7d14dcd3-074c-41e0-858f-5dcb23bdd22d"/>
          <ownedCapabilityInvolvements xsi:type="org.polarsys.capella.core.data.ctx:CapabilityInvolvement"
              id="8a8e8401-7db3-457e-83fb-1497648c7735" involved="#6fd1911d-a4df-4db9-9836-bd7aa267f30e"/>
          <ownedCapabilityInvolvements xsi:type="org.polarsys.capella.core.data.ctx:CapabilityInvolvement"
              id="28cfb92e-ed56-44c2-9328-b7a22e80eb17" involved="#10b8a96e-76e6-4e3b-a071-b42338c92795"/>
          <ownedCapabilityInvolvements xsi:type="org.polarsys.capella.core.data.ctx:CapabilityInvolvement"
              id="88ba6f16-b62f-418f-96b5-9e8f2eea1ac6" involved="#04b21b99-27d1-492a-a49f-fa157f7b7b54"/>
        </ownedCapabilities>
        <ownedCapabilities xsi:type="org.polarsys.capella.core.data.ctx:Capability"
            id="82b1a2f2-cdc6-4ea0-bd4d-aad1c20f0253" name="Sécuriser l''arrivée d''un train">
          <includes xsi:type="org.polarsys.capella.core.data.interaction:AbstractCapabilityInclude"
              id="80633b41-870b-4ec7-a57b-3aaf0b08d41a" included="#bd7778d7-7988-4cf1-87bd-45cd55bfecb2"/>
          <includes xsi:type="org.polarsys.capella.core.data.interaction:AbstractCapabilityInclude"
              id="067331ea-5b53-4f14-b7b9-416fe31d9dac" included="#4f919c8b-8b6d-4c47-b069-cedce2406259"/>
          <ownedCapabilityInvolvements xsi:type="org.polarsys.capella.core.data.ctx:CapabilityInvolvement"
              id="481b56cc-c875-45bc-a790-db87a074210d" involved="#04b21b99-27d1-492a-a49f-fa157f7b7b54"/>
        </ownedCapabilities>
        <ownedCapabilities xsi:type="org.polarsys.capella.core.data.ctx:Capability"
            id="4699170a-7aa0-405c-9b2e-7c6885c1e3b8" name="Détecter et sécuriser un véhicule arrété sur la voie">
          <includes xsi:type="org.polarsys.capella.core.data.interaction:AbstractCapabilityInclude"
              id="01d80040-fd6e-4167-8d1a-7105be43b87d" included="#bd7778d7-7988-4cf1-87bd-45cd55bfecb2"/>
          <includes xsi:type="org.polarsys.capella.core.data.interaction:AbstractCapabilityInclude"
              id="02ec824d-6028-473a-8f1b-369232a5e121" included="#b262c123-2d37-487a-970e-b8dfa5599869"/>
          <ownedCapabilityInvolvements xsi:type="org.polarsys.capella.core.data.ctx:CapabilityInvolvement"
              id="14aa7085-c602-4b88-93a5-c1e50a4dd7f7" involved="#04b21b99-27d1-492a-a49f-fa157f7b7b54"/>
        </ownedCapabilities>
        <ownedCapabilities xsi:type="org.polarsys.capella.core.data.ctx:Capability"
            id="bd7778d7-7988-4cf1-87bd-45cd55bfecb2" name="Contrôler et commander le trafic des trains à l''arrivée"/>
      </ownedAbstractCapabilityPkg>
      <ownedInterfacePkg xsi:type="org.polarsys.capella.core.data.cs:InterfacePkg"
          id="12c298a5-6f78-426d-8272-10ed2587b934" name="Interfaces"/>
      <ownedDataPkg xsi:type="org.polarsys.capella.core.data.information:DataPkg"
          id="fc3b002e-a28c-4bd2-a5a2-f1e246927652" name="Data">
        <ownedExchangeItems xsi:type="org.polarsys.capella.core.data.information:ExchangeItem"
            id="52b95c54-3cf2-438d-99f5-f95fd648a01b" name="Mise à jour horaires des trains">
          <ownedConstraints xsi:type="org.polarsys.capella.core.data.capellacore:Constraint"
              id="0076e538-90c2-44ed-a382-637e086ecf59" name="L''interface imposée par le système d''information de la gare ne fournit pas les informations du train en partance séparément, mais elles sont contenues dans les horaires de trains"
              constrainedElements="#52b95c54-3cf2-438d-99f5-f95fd648a01b #320e5d78-ce92-4616-a439-5b2ae01d697f">
            <ownedSpecification xsi:type="org.polarsys.capella.core.data.information.datavalue:OpaqueExpression"
                id="2d12de45-d833-4e0b-ad59-46e6ee63791d">
              <bodies></bodies>
              <languages>capella:linkedText</languages>
            </ownedSpecification>
          </ownedConstraints>
          <ownedElements xsi:type="org.polarsys.capella.core.data.information:ExchangeItemElement"
              id="9d6e7463-490e-48a1-a081-b5716492c9a6" name="Arrivées" abstractType="#c9470fd5-1f0b-4afc-986a-dec1127f3f0d"
              direction="UNSET" composite="true">
            <ownedMinCard xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="2050c530-7d47-449f-b1cf-0549853b96e3" value="1"/>
            <ownedMaxCard xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="31008770-4a2e-4325-b93b-8dcbdc4242d8" value="1"/>
          </ownedElements>
          <ownedElements xsi:type="org.polarsys.capella.core.data.information:ExchangeItemElement"
              id="342a5e49-ab39-4291-84b5-19085fb7b3e5" name="Départs" abstractType="#efe8a9d5-d0ff-4f5b-bc68-86e6f5c81ee2"
              direction="UNSET" composite="true">
            <ownedMinCard xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="60d41862-e568-47a6-963c-ba07ec45eb87" value="1"/>
            <ownedMaxCard xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="6918ef68-5ec6-49c6-acd5-5d3e9a5d03c0" value="1"/>
          </ownedElements>
          <ownedElements xsi:type="org.polarsys.capella.core.data.information:ExchangeItemElement"
              id="26fb74c2-5160-4fb7-b018-5de5a38d62e2" name="Heure de publication"
              abstractType="#41e3e24a-678e-4000-9bcf-c64bfbeb49e9" direction="UNSET"
              composite="true">
            <ownedMinCard xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="3b2adbf7-95d7-46dd-9b4c-2beb7182cb54" value="1"/>
            <ownedMaxCard xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="5990c8d3-2f4c-4c10-8efb-091e521efbf6" value="1"/>
          </ownedElements>
          <ownedElements xsi:type="org.polarsys.capella.core.data.information:ExchangeItemElement"
              id="72bff639-927c-49bb-8a2f-a40ac82f6756" name="Heure de prochaine publication"
              abstractType="#41e3e24a-678e-4000-9bcf-c64bfbeb49e9" direction="UNSET"
              composite="true">
            <ownedMinCard xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="149d6a4e-0f41-4a8d-a3a5-cef028cd2d42" value="1"/>
            <ownedMaxCard xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="837db8ef-394e-44fa-953a-18917f5faca5" value="1"/>
          </ownedElements>
        </ownedExchangeItems>
        <ownedExchangeItems xsi:type="org.polarsys.capella.core.data.information:ExchangeItem"
            id="320e5d78-ce92-4616-a439-5b2ae01d697f" name="Informations train en partance">
          <ownedElements xsi:type="org.polarsys.capella.core.data.information:ExchangeItemElement"
              id="5214b59b-e635-46a4-bcd5-c7b72af10731" name="Etat du train" abstractType="#28cbcd10-4615-4d29-abaa-201e9af4af55"
              direction="UNSET" composite="true">
            <ownedMinCard xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="253909b8-58e4-47de-b974-1885c9eafa2a" value="1"/>
            <ownedMaxCard xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="ba473071-4a9a-4ef7-a89a-a72aea07890b" value="1"/>
          </ownedElements>
        </ownedExchangeItems>
        <ownedAssociations xsi:type="org.polarsys.capella.core.data.information:Association"
            id="e9f85b09-76c0-412f-a08c-64ce12cebd47" name="DataAssociation1" navigableMembers="#117834d2-dd36-4cf6-b458-82c52804c331">
          <ownedMembers xsi:type="org.polarsys.capella.core.data.information:Property"
              id="3c46511c-76fa-4e5a-9c19-c6a1abbca739" name="mouvement de train"
              abstractType="#28cbcd10-4615-4d29-abaa-201e9af4af55" aggregationKind="ASSOCIATION">
            <ownedMinCard xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="78100190-5388-4c1e-b5e9-75eb4395f40f" value="1"/>
            <ownedMaxCard xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="5883cafb-3266-40ce-bdee-9a4ff1abf5aa" value="1"/>
          </ownedMembers>
        </ownedAssociations>
        <ownedAssociations xsi:type="org.polarsys.capella.core.data.information:Association"
            id="0234d68a-3d06-472f-8ee2-9550fcfd260a" name="DataAssociation2" navigableMembers="#7f77c23b-17e3-4c97-93c2-cd37a740d20a">
          <ownedMembers xsi:type="org.polarsys.capella.core.data.information:Property"
              id="2f6c3560-f458-4977-84d1-5c474b74944c" name="mouvement de train"
              abstractType="#28cbcd10-4615-4d29-abaa-201e9af4af55" aggregationKind="ASSOCIATION">
            <ownedMinCard xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="cc78b409-a471-4949-bfc4-39b1f48338e4" value="1"/>
            <ownedMaxCard xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="e6499d44-cd93-43ef-b276-c9bf7b076033" value="1"/>
          </ownedMembers>
        </ownedAssociations>
        <ownedDataValues xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
            id="c73e5092-61dd-4e72-b75e-271735689277" name="Nombre de voies" value="2"/>
        <ownedDataValues xsi:type="org.polarsys.capella.core.data.information.datavalue:NumericReference"
            id="ed50c6ea-8176-48d5-87fb-18e152345577" name="NBVoies" referencedValue="#c73e5092-61dd-4e72-b75e-271735689277"/>
        <ownedDataPkgs xsi:type="org.polarsys.capella.core.data.information:DataPkg"
            id="0e9ff9c0-b8dc-47ec-9e94-604c08cf91a8" name="Predefined Types">
          <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:BooleanType"
              id="c7dc4054-2181-4a2a-a57a-de2f64333042" name="Boolean" visibility="PUBLIC">
            <ownedLiterals xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralBooleanValue"
                id="574c3fdb-9945-4500-8e61-44ce53d82594" name="True" abstractType="#c7dc4054-2181-4a2a-a57a-de2f64333042"
                value="true"/>
            <ownedLiterals xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralBooleanValue"
                id="b9da09d3-8dbb-4af3-be9d-741c7003cf2d" name="False" abstractType="#c7dc4054-2181-4a2a-a57a-de2f64333042"/>
          </ownedDataTypes>
          <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:NumericType"
              id="a2da51d2-bc8f-4656-bbfe-cd5c97bc56de" name="Byte" visibility="PUBLIC">
            <ownedMinValue xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="7a8a7e44-af49-4e87-bd11-42fe6ab7021e" name="" abstractType="#a2da51d2-bc8f-4656-bbfe-cd5c97bc56de"
                value="0"/>
            <ownedMaxValue xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="3bf81554-caf0-4f29-bc40-0a3a6367e5ee" name="" abstractType="#a2da51d2-bc8f-4656-bbfe-cd5c97bc56de"
                value="255"/>
          </ownedDataTypes>
          <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:StringType"
              id="d976fb01-9b2f-4ab1-8c4c-8d8a9522f7e7" name="Char" visibility="PUBLIC">
            <ownedMinLength xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="5b3a5a60-5089-4b57-b060-3d18b78b4adf" name="" abstractType="#e1c22811-85e6-4683-ba24-e4dffc13a604"
                value="1"/>
            <ownedMaxLength xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="8f0162c3-89b0-41b8-810b-a0712516c6ea" name="" abstractType="#e1c22811-85e6-4683-ba24-e4dffc13a604"
                value="1"/>
          </ownedDataTypes>
          <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:NumericType"
              id="5fa8a4e3-825f-4d38-a977-15397736fde3" name="Double" discrete="false"
              visibility="PUBLIC" kind="FLOAT"/>
          <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:NumericType"
              id="bdd140f6-b4c3-4834-9af3-3564a996163e" name="Float" discrete="false"
              visibility="PUBLIC" kind="FLOAT"/>
          <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:NumericType"
              id="1ffda873-7f3b-4729-8f3d-8cf8cf0de729" name="Hexadecimal" visibility="PUBLIC">
            <ownedMinValue xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="6b3c2c88-b091-4137-ba9c-f50ec6514d82" name="" abstractType="#1ffda873-7f3b-4729-8f3d-8cf8cf0de729"
                value="0"/>
            <ownedMaxValue xsi:type="org.polarsys.capella.core.data.information.datavalue:BinaryExpression"
                id="1882bbec-fc24-4b0d-bd39-d884933d10cc" abstractType="#1ffda873-7f3b-4729-8f3d-8cf8cf0de729"
                operator="SUB">
              <ownedLeftOperand xsi:type="org.polarsys.capella.core.data.information.datavalue:BinaryExpression"
                  id="e29fa911-408e-4d32-9a3a-9ba3f7469144" operator="POW">
                <ownedLeftOperand xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                    id="7109c19b-0cfe-41a5-8dc4-f7a6af5414da" value="2"/>
                <ownedRightOperand xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                    id="5f69c2e8-b663-4183-a777-fc9e9ec01bd8" value="64"/>
              </ownedLeftOperand>
              <ownedRightOperand xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                  id="7b1bee63-c333-42c5-8672-9bdae2ecf671" value="1"/>
            </ownedMaxValue>
          </ownedDataTypes>
          <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:NumericType"
              id="9fdd7e16-45c8-4f7b-8b09-49b6e88e1a6f" name="Integer" visibility="PUBLIC"/>
          <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:NumericType"
              id="62da4ebf-b934-44f5-9166-bbfe789271ca" name="Long" visibility="PUBLIC"/>
          <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:NumericType"
              id="9af93137-61dd-4c20-a03c-74bfebe2e0fe" name="LongLong" visibility="PUBLIC"/>
          <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:NumericType"
              id="941cd0e4-6edf-446f-ae1a-983ca49a3c98" name="Short" visibility="PUBLIC"/>
          <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:StringType"
              id="7047216f-92be-4a58-8ef2-2926fb9e956f" name="String" visibility="PUBLIC"/>
          <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:NumericType"
              id="364f3a2d-d0d8-4034-8414-e2bb16355de0" name="UnsignedInteger" maxInclusive="false"
              visibility="PUBLIC">
            <ownedMinValue xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="f424c259-6ce0-4050-8448-de663e0691c4" name="" abstractType="#364f3a2d-d0d8-4034-8414-e2bb16355de0"
                value="0"/>
          </ownedDataTypes>
          <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:NumericType"
              id="e1c22811-85e6-4683-ba24-e4dffc13a604" name="UnsignedShort" maxInclusive="false"
              visibility="PUBLIC">
            <ownedMinValue xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="55b6f053-22fd-4784-bec4-0c3918376034" name="" abstractType="#e1c22811-85e6-4683-ba24-e4dffc13a604"
                value="0"/>
          </ownedDataTypes>
          <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:NumericType"
              id="0e543c55-4486-4e8a-a61c-952a25b4b551" name="UnsignedLong" maxInclusive="false"
              visibility="PUBLIC">
            <ownedMinValue xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="a736a0ed-76ca-423a-9897-f92dd5dfa023" name="" abstractType="#0e543c55-4486-4e8a-a61c-952a25b4b551"
                value="0"/>
          </ownedDataTypes>
          <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:NumericType"
              id="b71f6cf3-646b-4cf4-8d44-8f4057a8ddf5" name="UnsignedLongLong" maxInclusive="false"
              visibility="PUBLIC">
            <ownedMinValue xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="f8b3159a-ec8b-4ccd-925c-e43c5d29ab64" name="" abstractType="#b71f6cf3-646b-4cf4-8d44-8f4057a8ddf5"
                value="0"/>
          </ownedDataTypes>
        </ownedDataPkgs>
        <ownedClasses xsi:type="org.polarsys.capella.core.data.information:Class"
            id="28cbcd10-4615-4d29-abaa-201e9af4af55" name="Mouvement de train">
          <ownedFeatures xsi:type="org.polarsys.capella.core.data.information:Property"
              id="c874af80-7186-4849-98c7-01354d4cde29" name="Identifiant train" abstractType="#7047216f-92be-4a58-8ef2-2926fb9e956f">
            <ownedMinCard xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="18b37d40-98b2-4198-911c-dd2dda15a19b" value="1"/>
            <ownedMaxCard xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="a91981a0-8c1d-4db7-b1b2-d3701f3e38c2" value="1"/>
          </ownedFeatures>
          <ownedFeatures xsi:type="org.polarsys.capella.core.data.information:Property"
              id="117834d2-dd36-4cf6-b458-82c52804c331" name="horaire planifié" abstractType="#41e3e24a-678e-4000-9bcf-c64bfbeb49e9"
              aggregationKind="ASSOCIATION">
            <ownedMinCard xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="fb801cd1-d7c3-4de8-8a35-b6c9d1dd673b" value="1"/>
            <ownedMaxCard xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="26806111-6a62-4bda-9637-398067962004" value="1"/>
          </ownedFeatures>
          <ownedFeatures xsi:type="org.polarsys.capella.core.data.information:Property"
              id="6e0b0eeb-ce5d-409a-8341-5868cc925aec" name="Statut" abstractType="#ad19b456-20e0-4280-bbfc-0e100c6f7fb7">
            <ownedMinCard xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="92b6da4b-84f0-45ec-b6f9-5cfafefe24ab" value="1"/>
            <ownedMaxCard xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="6d3d2098-c8c4-45e1-8999-e09d3bce9658" value="1"/>
          </ownedFeatures>
          <ownedFeatures xsi:type="org.polarsys.capella.core.data.information:Property"
              id="88a86c6d-c297-405f-85a8-e1f182877603" name="Voie" abstractType="#aafe295b-3144-4f98-bd10-6e90eb59fa20">
            <ownedMinCard xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="d7ea93d9-680a-4641-9d49-35cdb664de74" value="1"/>
            <ownedMaxCard xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="73466379-8068-4e39-8236-7f97ae7a83c8" value="1"/>
          </ownedFeatures>
          <ownedFeatures xsi:type="org.polarsys.capella.core.data.information:Property"
              id="c6e69d98-7f3b-4cdd-98a3-f818290f236b" name="Etat" abstractType="#ec3d972c-a8ce-43bb-95db-1495295c2234">
            <ownedMinCard xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="c5573b75-de07-4b08-998d-9e2f070e768d" value="1"/>
            <ownedMaxCard xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="5f17db2e-339d-49f0-959f-8d711c41f002" value="1"/>
          </ownedFeatures>
          <ownedFeatures xsi:type="org.polarsys.capella.core.data.information:Property"
              id="7f77c23b-17e3-4c97-93c2-cd37a740d20a" name="horaire estimé" abstractType="#41e3e24a-678e-4000-9bcf-c64bfbeb49e9"
              aggregationKind="ASSOCIATION">
            <ownedMinCard xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="ec3c8fc8-11c1-4955-a895-d0ff89fe5bcc" value="1"/>
            <ownedMaxCard xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="220566cd-0164-41de-b042-5ccfedb8ec36" value="1"/>
          </ownedFeatures>
        </ownedClasses>
        <ownedClasses xsi:type="org.polarsys.capella.core.data.information:Class"
            id="41e3e24a-678e-4000-9bcf-c64bfbeb49e9" name="Horaire">
          <ownedFeatures xsi:type="org.polarsys.capella.core.data.information:Property"
              id="474b1f88-5bfb-471b-96d1-ef9d6aa3b59f" name="HH" abstractType="#c0dd28f2-5c1f-4703-ac23-e2ff5bef45ed">
            <ownedMinCard xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="01cb0fa6-865b-4992-b3fe-1e8d4648e5fd" value="1"/>
            <ownedMaxCard xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="a23b7e27-e96a-4c6e-9c54-e8b1009001dd" value="1"/>
          </ownedFeatures>
          <ownedFeatures xsi:type="org.polarsys.capella.core.data.information:Property"
              id="7b7079c1-1f1c-4d10-b766-2222ed031835" name="MM" abstractType="#59ce7526-060b-49a9-a993-91f9b6cb722e">
            <ownedMinCard xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="7c5b6715-50ec-4155-af36-38a19acfc873" value="1"/>
            <ownedMaxCard xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="ae829e07-0e06-4f29-a502-a778b39ca768" value="1"/>
          </ownedFeatures>
        </ownedClasses>
        <ownedCollections xsi:type="org.polarsys.capella.core.data.information:Collection"
            id="efe8a9d5-d0ff-4f5b-bc68-86e6f5c81ee2" name="Départs de trains" summary=""
            minInclusive="true" maxInclusive="true" type="#28cbcd10-4615-4d29-abaa-201e9af4af55"/>
        <ownedCollections xsi:type="org.polarsys.capella.core.data.information:Collection"
            id="c9470fd5-1f0b-4afc-986a-dec1127f3f0d" name="Arrivées de trains" minInclusive="true"
            maxInclusive="true" type="#28cbcd10-4615-4d29-abaa-201e9af4af55"/>
        <ownedUnits xsi:type="org.polarsys.capella.core.data.information:Unit" id="f1c9fe55-4177-4f54-97e3-552fdbdf033c"
            name="Mn"/>
        <ownedUnits xsi:type="org.polarsys.capella.core.data.information:Unit" id="efc51a92-9029-4ca6-866b-1cfea024d4b9"
            name="Hr"/>
        <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:NumericType"
            id="c0dd28f2-5c1f-4703-ac23-e2ff5bef45ed" name="Heure">
          <ownedMinValue xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
              id="c976c66b-888b-44cb-98e6-89eea6264ab6" name="" abstractType="#c0dd28f2-5c1f-4703-ac23-e2ff5bef45ed"
              unit="#efc51a92-9029-4ca6-866b-1cfea024d4b9" value="0"/>
          <ownedMaxValue xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
              id="5bef7fe8-aa35-40a9-97e1-edab2afeffb3" name="" abstractType="#c0dd28f2-5c1f-4703-ac23-e2ff5bef45ed"
              unit="#efc51a92-9029-4ca6-866b-1cfea024d4b9" value="23"/>
        </ownedDataTypes>
        <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:NumericType"
            id="59ce7526-060b-49a9-a993-91f9b6cb722e" name="Minutes">
          <ownedMinValue xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
              id="eaadafb2-8f72-432f-a05c-309777207c25" name="" abstractType="#59ce7526-060b-49a9-a993-91f9b6cb722e"
              unit="#f1c9fe55-4177-4f54-97e3-552fdbdf033c" value="0"/>
          <ownedMaxValue xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
              id="5ec2b32f-55a9-4687-9d7f-b45484d5470f" name="" abstractType="#59ce7526-060b-49a9-a993-91f9b6cb722e"
              unit="#f1c9fe55-4177-4f54-97e3-552fdbdf033c" value="59"/>
        </ownedDataTypes>
        <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:NumericType"
            id="aafe295b-3144-4f98-bd10-6e90eb59fa20" name="Numéro Voie">
          <ownedMinValue xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
              id="c290d8ad-d21b-4c9a-a6f9-fc6c75e83da1" name="" abstractType="#aafe295b-3144-4f98-bd10-6e90eb59fa20"
              value="1"/>
          <ownedMaxValue xsi:type="org.polarsys.capella.core.data.information.datavalue:NumericReference"
              id="06c9a5c4-df84-42b0-aea4-461b728bdf72" name="" abstractType="#aafe295b-3144-4f98-bd10-6e90eb59fa20"
              referencedValue="#ed50c6ea-8176-48d5-87fb-18e152345577"/>
        </ownedDataTypes>
        <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:BooleanType"
            id="ec3d972c-a8ce-43bb-95db-1495295c2234" name="Situation en gare">
          <ownedLiterals xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralBooleanValue"
              id="51d594fd-f30c-4b15-963e-5b6103579f19" name="A quai" abstractType="#ec3d972c-a8ce-43bb-95db-1495295c2234"
              value="true"/>
          <ownedLiterals xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralBooleanValue"
              id="8b69c39f-b113-40d6-a4bc-a6edd6fe6de5" name="Prêt au départ" abstractType="#ec3d972c-a8ce-43bb-95db-1495295c2234"/>
        </ownedDataTypes>
        <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:Enumeration"
            id="ad19b456-20e0-4280-bbfc-0e100c6f7fb7" name="Ponctualité">
          <ownedLiterals xsi:type="org.polarsys.capella.core.data.information.datavalue:EnumerationLiteral"
              id="790a8cd6-e98e-4772-a584-5deadc2ea2a2" name="A l''heure" abstractType="#ad19b456-20e0-4280-bbfc-0e100c6f7fb7"/>
          <ownedLiterals xsi:type="org.polarsys.capella.core.data.information.datavalue:EnumerationLiteral"
              id="b56c13b6-5fb7-4d92-8a46-5c8acb8777f2" name="Retardé" abstractType="#ad19b456-20e0-4280-bbfc-0e100c6f7fb7"/>
          <ownedLiterals xsi:type="org.polarsys.capella.core.data.information.datavalue:EnumerationLiteral"
              id="9c046546-d745-4ef8-af70-66b1163d2380" name="Annulé" abstractType="#ad19b456-20e0-4280-bbfc-0e100c6f7fb7"/>
        </ownedDataTypes>
      </ownedDataPkg>
      <ownedSystemComponentPkg xsi:type="org.polarsys.capella.core.data.ctx:SystemComponentPkg"
          id="e2919e86-d24e-4c10-8b44-4dfe4d21924d" name="Structure">
        <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
            id="90f4c273-5369-47a3-b0cb-d3a16c002b60" targetElement="#f5df5d68-06ea-4d56-aede-be9e36331cf1"
            sourceElement="#be3248ec-c620-44e3-9681-2bd4833c7064"/>
        <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
            id="0a096c1a-edd8-4d66-8486-65398ba7d9f9" targetElement="#0242df4b-b0d1-46eb-a3f4-0fad91bbeb7f"
            sourceElement="#f375484d-677f-4fa2-a941-d0cfb05f23bc"/>
        <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
            id="c2cd6e74-66e7-4d02-814e-469d6371c085" targetElement="#227236f6-bfcb-46ef-b33d-2c6dfe7aa657"
            sourceElement="#26dcfde6-3e60-438d-ad21-d102d59ad9e6"/>
        <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
            id="79d09bce-6f2f-48a9-82bc-30db9e66a58c" targetElement="#fea99293-673c-4fa0-8f7c-b836a8f2ad44"
            sourceElement="#3363801a-aa5d-4919-be90-110bb1f78c35"/>
        <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
            id="f0177ca4-bfb5-4cd8-9f6f-8627c832eb12" targetElement="#4e390537-e16b-4db5-b18d-8068f1a8c495"
            sourceElement="#ebbd13be-082e-4194-9d3b-452ec5db186c"/>
        <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
            id="620c3891-fd35-49d1-a01b-bd83c7449e1e" targetElement="#034d6ba4-e1a6-40a0-b573-1592ed430bbf"
            sourceElement="#e2919e86-d24e-4c10-8b44-4dfe4d21924d"/>
        <ownedParts xsi:type="org.polarsys.capella.core.data.cs:Part" id="18b4bb32-9f1b-44be-a24b-26e04b6ebadd"
            name="Système de régulation" abstractType="#04b21b99-27d1-492a-a49f-fa157f7b7b54"/>
        <ownedParts xsi:type="org.polarsys.capella.core.data.cs:Part" id="3363801a-aa5d-4919-be90-110bb1f78c35"
            name="Train arrivant en gare" abstractType="#c52aa200-8bb3-4edb-8c8c-ed4f183c750d"/>
        <ownedParts xsi:type="org.polarsys.capella.core.data.cs:Part" id="ebbd13be-082e-4194-9d3b-452ec5db186c"
            name="Train en partance" abstractType="#10b8a96e-76e6-4e3b-a071-b42338c92795"/>
        <ownedParts xsi:type="org.polarsys.capella.core.data.cs:Part" id="be3248ec-c620-44e3-9681-2bd4833c7064"
            name="Véhicule routier" abstractType="#7d14dcd3-074c-41e0-858f-5dcb23bdd22d"/>
        <ownedParts xsi:type="org.polarsys.capella.core.data.cs:Part" id="26dcfde6-3e60-438d-ad21-d102d59ad9e6"
            name="Opérateurs de régulation du trafic" abstractType="#7a7db02a-3a73-4972-b4d0-2f8c25ae06ed"/>
        <ownedParts xsi:type="org.polarsys.capella.core.data.cs:Part" id="f375484d-677f-4fa2-a941-d0cfb05f23bc"
            name="Système d''information Gare" abstractType="#6fd1911d-a4df-4db9-9836-bd7aa267f30e"/>
        <ownedComponentExchanges xsi:type="org.polarsys.capella.core.data.fa:ComponentExchange"
            id="a4f56c19-119d-4d1a-9f81-df914a5b43b1" name="Service Horaires trains"
            source="#871da6ff-b8db-49ce-9f5a-eba4a68cb4e9" target="#40660f54-c6c9-49e4-87da-eda01ceca868"
            kind="FLOW">
          <ownedConstraints xsi:type="org.polarsys.capella.core.data.capellacore:Constraint"
              id="8653bf94-8f99-414b-9c42-2e64bfe4dd4f" name="Flux RSS sur HTTP."
              constrainedElements="#a4f56c19-119d-4d1a-9f81-df914a5b43b1">
            <ownedSpecification xsi:type="org.polarsys.capella.core.data.information.datavalue:OpaqueExpression"
                id="09d2c194-2bc0-4384-8afb-f987356c96c6">
              <bodies></bodies>
              <languages>capella:linkedText</languages>
            </ownedSpecification>
          </ownedConstraints>
          <ownedConstraints xsi:type="org.polarsys.capella.core.data.capellacore:Constraint"
              id="e6d9c43b-6249-4199-9a1e-7d14230609e8" name="Le besoin fonctionnel de deux informations distinctes est couvert par un unique service fourni (et imposé dans sa forme) par le système d''information de la gare."
              constrainedElements="#a4f56c19-119d-4d1a-9f81-df914a5b43b1 #54522c92-70ed-4342-ad53-e59491f698b1 #0812acad-b57c-4e90-a572-085854a909bd">
            <ownedSpecification xsi:type="org.polarsys.capella.core.data.information.datavalue:OpaqueExpression"
                id="aec22796-5ac0-4b04-8cb8-10bb608f314d">
              <bodies></bodies>
              <languages>capella:linkedText</languages>
            </ownedSpecification>
          </ownedConstraints>
          <ownedComponentExchangeFunctionalExchangeAllocations xsi:type="org.polarsys.capella.core.data.fa:ComponentExchangeFunctionalExchangeAllocation"
              id="db407c4f-1a3d-4535-95d0-c773cff0ffcd" targetElement="#0812acad-b57c-4e90-a572-085854a909bd"
              sourceElement="#a4f56c19-119d-4d1a-9f81-df914a5b43b1"/>
          <ownedComponentExchangeFunctionalExchangeAllocations xsi:type="org.polarsys.capella.core.data.fa:ComponentExchangeFunctionalExchangeAllocation"
              id="01f809f1-e555-4f49-8a26-c05f34caa512" targetElement="#3ba4bfbc-170a-4b09-88c4-4a931b1f7a72"
              sourceElement="#a4f56c19-119d-4d1a-9f81-df914a5b43b1"/>
          <ownedComponentExchangeFunctionalExchangeAllocations xsi:type="org.polarsys.capella.core.data.fa:ComponentExchangeFunctionalExchangeAllocation"
              id="05d43db0-3765-4d99-ab8d-4ff4aff2d990" targetElement="#54522c92-70ed-4342-ad53-e59491f698b1"
              sourceElement="#a4f56c19-119d-4d1a-9f81-df914a5b43b1"/>
        </ownedComponentExchanges>
        <ownedPhysicalLinks xsi:type="org.polarsys.capella.core.data.cs:PhysicalLink"
            id="b5695825-4d64-4d9b-b566-a48b3bf9273b" name="Réseau local" linkEnds="#e2ba23b7-425b-45ec-8e13-df0b9c9288f5 #4eff7137-b7d8-4aae-a7f6-0911a22f422a">
          <ownedComponentExchangeAllocations xsi:type="org.polarsys.capella.core.data.fa:ComponentExchangeAllocation"
              id="9e4e9b66-25fd-4a75-a5cc-0ab392fca756" targetElement="#a4f56c19-119d-4d1a-9f81-df914a5b43b1"
              sourceElement="#b5695825-4d64-4d9b-b566-a48b3bf9273b"/>
        </ownedPhysicalLinks>
        <ownedSystemComponents xsi:type="org.polarsys.capella.core.data.ctx:SystemComponent"
            id="04b21b99-27d1-492a-a49f-fa157f7b7b54" name="Système de régulation">
          <ownedConstraints xsi:type="org.polarsys.capella.core.data.capellacore:Constraint"
              id="381a5dc6-2678-4357-af60-2b1e5bc49d65" name="Réseau wifi">
            <ownedSpecification xsi:type="org.polarsys.capella.core.data.information.datavalue:OpaqueExpression"
                id="e8675d0b-fb7d-44a1-b5c7-a8fe268a0cf6">
              <bodies></bodies>
              <languages>capella:linkedText</languages>
            </ownedSpecification>
          </ownedConstraints>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="e3ca7187-6c7d-4778-8765-9c36255d3f70" targetElement="#c3dab7d3-fca0-463f-b02d-fb1b7a6a9697"
              sourceElement="#04b21b99-27d1-492a-a49f-fa157f7b7b54"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="3a6eb084-0666-410a-b17b-f2d4a86a1727" targetElement="#858beec0-b275-4549-bd1f-27aca5052327"
              sourceElement="#04b21b99-27d1-492a-a49f-fa157f7b7b54"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="c28c1ebe-04bb-4076-b1b9-a278691ab025" targetElement="#eb0f13c4-2ac1-483e-941f-d135ee0d4b03"
              sourceElement="#04b21b99-27d1-492a-a49f-fa157f7b7b54"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="a56fadf8-22bc-48a6-ab72-85c277143ea5" targetElement="#610efa2d-22f1-4d5c-a058-0287baa9af70"
              sourceElement="#04b21b99-27d1-492a-a49f-fa157f7b7b54"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="a00f6852-d7af-46d0-bc21-c284d715dc2b" targetElement="#4827a14b-4396-4ee3-9734-8ae3c0db294b"
              sourceElement="#04b21b99-27d1-492a-a49f-fa157f7b7b54"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="39511cbc-c534-471f-9f59-8288d32d4c1a" targetElement="#cd468610-1bc9-46b8-b111-aef755fcf780"
              sourceElement="#04b21b99-27d1-492a-a49f-fa157f7b7b54"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="b8ab548d-8d9d-4dd0-a03c-2f1e8a1b089f" targetElement="#fa59b83b-f039-44a7-98f6-a3bb04639b20"
              sourceElement="#04b21b99-27d1-492a-a49f-fa157f7b7b54"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="a1c5767f-b344-4a51-996d-61eb517aaa08" targetElement="#d35e2a23-cd82-487f-a8e9-ca58eca0e547"
              sourceElement="#04b21b99-27d1-492a-a49f-fa157f7b7b54"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="f1e1978d-193a-40b0-ac97-fefbf06e34ea" targetElement="#19fbbd53-5adc-4511-b228-af4196a42629"
              sourceElement="#04b21b99-27d1-492a-a49f-fa157f7b7b54"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="548a2677-f756-4bb4-98c0-bc66f00e3b58" targetElement="#126ece23-ef3b-4fe0-bec4-b3dbd903bfa6"
              sourceElement="#04b21b99-27d1-492a-a49f-fa157f7b7b54"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="57c32af3-6065-40fa-9605-9271e8938e54" targetElement="#54b14102-3ad6-4a2e-bfe3-90c76680f870"
              sourceElement="#04b21b99-27d1-492a-a49f-fa157f7b7b54"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="781a4ad8-1d13-45e8-9c30-20bdce28f4cb" targetElement="#0f8e67c3-5d84-47eb-bc95-6ae45e1db7a5"
              sourceElement="#04b21b99-27d1-492a-a49f-fa157f7b7b54"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="ef3dc4e4-8767-4143-afcd-0d66eb2bb474" targetElement="#4169a14c-1705-4994-ba41-de595f81ed8e"
              sourceElement="#04b21b99-27d1-492a-a49f-fa157f7b7b54"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="babf17da-0cc0-45bd-b956-978ddd829c09" targetElement="#c792cf67-3aff-4e55-ba1e-d60fa32c27a0"
              sourceElement="#04b21b99-27d1-492a-a49f-fa157f7b7b54"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="28de8d46-98c0-45fb-8197-2f66390426c7" targetElement="#8baf918d-1507-4e8f-adf8-8103dddb9534"
              sourceElement="#04b21b99-27d1-492a-a49f-fa157f7b7b54"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="86a1561e-f6d1-4ae5-93a0-a317244a6469" targetElement="#9dee1092-e1c0-4b92-a255-59ce9e0943c2"
              sourceElement="#04b21b99-27d1-492a-a49f-fa157f7b7b54"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="3a1f7e72-5e50-40c8-a2dd-42619986a524" targetElement="#34377b11-d0e9-4934-95f8-facae4de8707"
              sourceElement="#04b21b99-27d1-492a-a49f-fa157f7b7b54"/>
          <ownedStateMachines xsi:type="org.polarsys.capella.core.data.capellacommon:StateMachine"
              id="6bd0415e-b650-4488-b082-7b0ebfb4b63a" name="Traffic control modes">
            <ownedRegions xsi:type="org.polarsys.capella.core.data.capellacommon:Region"
                id="8814bcf4-5e79-430d-a5fa-020dac37d3f2" name="Default Region" involvedStates="#d5a7fe39-9ff0-455e-ae89-8d886403b54d #91857a9b-4c69-46e3-bdba-f75729782858 #7ba44a02-edd6-47c7-97c4-296055be4e8d #3acb8057-fdbb-4dc5-8c91-aa1846a3f20f #33c2659d-1526-4400-b907-22f70fdf34b5">
              <ownedStates xsi:type="org.polarsys.capella.core.data.capellacommon:Mode"
                  id="d5a7fe39-9ff0-455e-ae89-8d886403b54d" name="Départ de train">
                <ownedAbstractStateRealizations xsi:type="org.polarsys.capella.core.data.capellacommon:AbstractStateRealization"
                    id="775d17fc-8cbc-4ef0-b2a6-40e1430f9327" targetElement="#08bfc60d-db39-4702-9ade-6cf1bd620dbb"
                    sourceElement="#d5a7fe39-9ff0-455e-ae89-8d886403b54d"/>
                <ownedRegions xsi:type="org.polarsys.capella.core.data.capellacommon:Region"
                    id="52b0cfe1-36f0-4f2a-b5d9-e483d40c34fa" name="region"/>
              </ownedStates>
              <ownedStates xsi:type="org.polarsys.capella.core.data.capellacommon:Mode"
                  id="91857a9b-4c69-46e3-bdba-f75729782858" name="Arrivée de train">
                <ownedAbstractStateRealizations xsi:type="org.polarsys.capella.core.data.capellacommon:AbstractStateRealization"
                    id="e3d5877d-0424-486c-a4f3-72474ba4bb54" targetElement="#2bbb63e1-8b3b-44a5-9b35-70c10c079798"
                    sourceElement="#91857a9b-4c69-46e3-bdba-f75729782858"/>
                <ownedRegions xsi:type="org.polarsys.capella.core.data.capellacommon:Region"
                    id="6d03b326-816f-4456-a041-82a4c5f087f1" name="region"/>
              </ownedStates>
              <ownedStates xsi:type="org.polarsys.capella.core.data.capellacommon:Mode"
                  id="7ba44a02-edd6-47c7-97c4-296055be4e8d" name="Trafic routier">
                <ownedAbstractStateRealizations xsi:type="org.polarsys.capella.core.data.capellacommon:AbstractStateRealization"
                    id="078350a7-b4de-42e9-b284-cdb71dac361a" targetElement="#78dad130-e1e6-4df1-8b42-b94d21d24034"
                    sourceElement="#7ba44a02-edd6-47c7-97c4-296055be4e8d"/>
                <ownedRegions xsi:type="org.polarsys.capella.core.data.capellacommon:Region"
                    id="92ed9564-c969-4242-baf8-805b624558b4" name="region"/>
              </ownedStates>
              <ownedStates xsi:type="org.polarsys.capella.core.data.capellacommon:InitialPseudoState"
                  id="3acb8057-fdbb-4dc5-8c91-aa1846a3f20f" name="Initial">
                <ownedAbstractStateRealizations xsi:type="org.polarsys.capella.core.data.capellacommon:AbstractStateRealization"
                    id="432d5f8f-f4ce-4d0d-bd7e-303c87ad3a21" targetElement="#b427f240-9221-4a7d-bf99-45f573a27cc3"
                    sourceElement="#3acb8057-fdbb-4dc5-8c91-aa1846a3f20f"/>
              </ownedStates>
              <ownedStates xsi:type="org.polarsys.capella.core.data.capellacommon:Mode"
                  id="33c2659d-1526-4400-b907-22f70fdf34b5" name="Arrêt d''urgence">
                <ownedRegions xsi:type="org.polarsys.capella.core.data.capellacommon:Region"
                    id="030b9ad4-8568-4316-8ef2-a9fed6a345b0" name="region"/>
              </ownedStates>
              <ownedTransitions xsi:type="org.polarsys.capella.core.data.capellacommon:StateTransition"
                  id="32f46c7f-8423-41ef-934c-daacc77dcbeb" name="Train arrivant"
                  triggerDescription="" source="#d5a7fe39-9ff0-455e-ae89-8d886403b54d"
                  target="#91857a9b-4c69-46e3-bdba-f75729782858" triggers="#137f21b6-e7cc-4a94-b305-9061f70a7a98">
                <ownedStateTransitionRealizations xsi:type="org.polarsys.capella.core.data.capellacommon:StateTransitionRealization"
                    id="de6a3352-8dcc-4dc4-a34c-c0740d87ed50" targetElement="#dd3d0ec5-be65-4d7a-bd31-9b46a4bd1b1f"
                    sourceElement="#32f46c7f-8423-41ef-934c-daacc77dcbeb"/>
              </ownedTransitions>
              <ownedTransitions xsi:type="org.polarsys.capella.core.data.capellacommon:StateTransition"
                  id="91b38463-b9c0-4d46-b9ed-ea418575551e" name="Train parti" triggerDescription=""
                  source="#d5a7fe39-9ff0-455e-ae89-8d886403b54d" target="#7ba44a02-edd6-47c7-97c4-296055be4e8d"
                  triggers="#2f3e16b5-9c29-40a2-aaad-0175954d52e7">
                <ownedStateTransitionRealizations xsi:type="org.polarsys.capella.core.data.capellacommon:StateTransitionRealization"
                    id="ebc2175d-a3a6-4534-ac10-24cff694d574" targetElement="#10ccfa8a-fe0a-45ba-95c4-9f5f6806619a"
                    sourceElement="#91b38463-b9c0-4d46-b9ed-ea418575551e"/>
              </ownedTransitions>
              <ownedTransitions xsi:type="org.polarsys.capella.core.data.capellacommon:StateTransition"
                  id="cfc40cab-23d3-4fe3-9c46-54fad589f28c" name="Train en partance"
                  triggerDescription="" source="#7ba44a02-edd6-47c7-97c4-296055be4e8d"
                  target="#d5a7fe39-9ff0-455e-ae89-8d886403b54d" triggers="#54522c92-70ed-4342-ad53-e59491f698b1">
                <ownedStateTransitionRealizations xsi:type="org.polarsys.capella.core.data.capellacommon:StateTransitionRealization"
                    id="59916155-4a3b-4a15-9992-b84688ffc03f" targetElement="#f13831ce-117f-41a3-b251-23f3f23574ae"
                    sourceElement="#cfc40cab-23d3-4fe3-9c46-54fad589f28c"/>
              </ownedTransitions>
              <ownedTransitions xsi:type="org.polarsys.capella.core.data.capellacommon:StateTransition"
                  id="c82ae0c0-bd15-4140-8618-1f0e9d961a6a" name="Train arrivant"
                  triggerDescription="" source="#7ba44a02-edd6-47c7-97c4-296055be4e8d"
                  target="#91857a9b-4c69-46e3-bdba-f75729782858" triggers="#137f21b6-e7cc-4a94-b305-9061f70a7a98">
                <ownedStateTransitionRealizations xsi:type="org.polarsys.capella.core.data.capellacommon:StateTransitionRealization"
                    id="c49a4447-4350-4024-9d87-0749507acbbf" targetElement="#18c4aafc-0605-4463-a966-a08d65b3d375"
                    sourceElement="#c82ae0c0-bd15-4140-8618-1f0e9d961a6a"/>
              </ownedTransitions>
              <ownedTransitions xsi:type="org.polarsys.capella.core.data.capellacommon:StateTransition"
                  id="558bc7cf-d4c5-4c7b-a37c-40fb7814197f" name="Train arrivé" triggerDescription=""
                  source="#91857a9b-4c69-46e3-bdba-f75729782858" target="#7ba44a02-edd6-47c7-97c4-296055be4e8d"
                  triggers="#2f3e16b5-9c29-40a2-aaad-0175954d52e7">
                <ownedStateTransitionRealizations xsi:type="org.polarsys.capella.core.data.capellacommon:StateTransitionRealization"
                    id="bd07aadd-bb39-46af-acf3-de785c097d2c" targetElement="#39a07ddb-7a00-4dda-8d43-13e245114d63"
                    sourceElement="#558bc7cf-d4c5-4c7b-a37c-40fb7814197f"/>
              </ownedTransitions>
              <ownedTransitions xsi:type="org.polarsys.capella.core.data.capellacommon:StateTransition"
                  id="caf1fddb-c6fb-4be2-a76d-c17cb687d289" triggerDescription=""
                  source="#91857a9b-4c69-46e3-bdba-f75729782858" target="#d5a7fe39-9ff0-455e-ae89-8d886403b54d"
                  triggers="#54522c92-70ed-4342-ad53-e59491f698b1">
                <ownedStateTransitionRealizations xsi:type="org.polarsys.capella.core.data.capellacommon:StateTransitionRealization"
                    id="2e5b2d75-49c4-4bd6-9707-48afa3b08e7a" targetElement="#68109d2b-56ba-46d9-979f-4465f1d192ce"
                    sourceElement="#caf1fddb-c6fb-4be2-a76d-c17cb687d289"/>
              </ownedTransitions>
              <ownedTransitions xsi:type="org.polarsys.capella.core.data.capellacommon:StateTransition"
                  id="c0738a8e-1b9d-48f5-837d-a2240d08f6c8" triggerDescription=""
                  source="#3acb8057-fdbb-4dc5-8c91-aa1846a3f20f" target="#7ba44a02-edd6-47c7-97c4-296055be4e8d">
                <ownedStateTransitionRealizations xsi:type="org.polarsys.capella.core.data.capellacommon:StateTransitionRealization"
                    id="8a56b3aa-e546-4056-a929-9b318790e122" targetElement="#89c3410f-81e4-4c20-a195-554592f39a60"
                    sourceElement="#c0738a8e-1b9d-48f5-837d-a2240d08f6c8"/>
              </ownedTransitions>
              <ownedTransitions xsi:type="org.polarsys.capella.core.data.capellacommon:StateTransition"
                  id="08ba85a3-cfc0-4968-a663-edcec9edd9a5" triggerDescription=""
                  source="#d5a7fe39-9ff0-455e-ae89-8d886403b54d" target="#33c2659d-1526-4400-b907-22f70fdf34b5"/>
              <ownedTransitions xsi:type="org.polarsys.capella.core.data.capellacommon:StateTransition"
                  id="48ab6998-1596-4ae5-a53e-b81312263e1b" triggerDescription=""
                  source="#91857a9b-4c69-46e3-bdba-f75729782858" target="#33c2659d-1526-4400-b907-22f70fdf34b5"/>
              <ownedTransitions xsi:type="org.polarsys.capella.core.data.capellacommon:StateTransition"
                  id="88b25f67-7a34-4741-a051-9a73faad36af" triggerDescription=""
                  source="#33c2659d-1526-4400-b907-22f70fdf34b5" target="#7ba44a02-edd6-47c7-97c4-296055be4e8d"
                  triggers="#cc2861a0-e83e-4086-81a5-67d1873830be">
                <ownedConstraints xsi:type="org.polarsys.capella.core.data.capellacore:Constraint"
                    id="49753f94-0abc-453b-833f-5ce961d0e4c0" name="l''ajout du mode Arrêt d''urgence soulève la question des conditions de sortie de ce mode; ceci conduit à ajouter un échange fonctionnel de reprise de l''activité et de libération du trafic routier."
                    constrainedElements="#88b25f67-7a34-4741-a051-9a73faad36af">
                  <ownedSpecification xsi:type="org.polarsys.capella.core.data.information.datavalue:OpaqueExpression"
                      id="a83113ad-a497-4538-8a59-6513a70e01da">
                    <bodies></bodies>
                    <languages>capella:linkedText</languages>
                  </ownedSpecification>
                </ownedConstraints>
              </ownedTransitions>
              <ownedTransitions xsi:type="org.polarsys.capella.core.data.capellacommon:StateTransition"
                  id="da611665-cd13-421d-80c7-e1f1fe82a68f" triggerDescription=""
                  source="#7ba44a02-edd6-47c7-97c4-296055be4e8d" target="#33c2659d-1526-4400-b907-22f70fdf34b5"
                  triggers="#c14089fb-a49a-4a93-9824-b7eabf8a4ac0"/>
            </ownedRegions>
          </ownedStateMachines>
          <ownedFeatures xsi:type="org.polarsys.capella.core.data.fa:ComponentPort"
              id="40660f54-c6c9-49e4-87da-eda01ceca868" name="CP 1" orientation="IN"
              kind="FLOW">
            <ownedPortAllocations xsi:type="org.polarsys.capella.core.data.information:PortAllocation"
                id="d573cdfb-c3e3-4618-8ad6-b94d4c255434" targetElement="#ff6a097d-0db1-49b1-81a2-406cb7bbf7cc"
                sourceElement="#40660f54-c6c9-49e4-87da-eda01ceca868"/>
            <ownedPortAllocations xsi:type="org.polarsys.capella.core.data.information:PortAllocation"
                id="581ba77f-420e-4133-bb90-fdcfee7b1960" targetElement="#3e3b2f0a-f86b-4325-b072-1d102284948f"
                sourceElement="#40660f54-c6c9-49e4-87da-eda01ceca868"/>
            <ownedPortAllocations xsi:type="org.polarsys.capella.core.data.information:PortAllocation"
                id="8f8219e3-d0cf-4ba9-a81f-1579f82092d4" targetElement="#6968a885-8253-46ab-9e62-7f4ab1747522"
                sourceElement="#40660f54-c6c9-49e4-87da-eda01ceca868"/>
          </ownedFeatures>
          <ownedFeatures xsi:type="org.polarsys.capella.core.data.cs:PhysicalPort"
              id="4eff7137-b7d8-4aae-a7f6-0911a22f422a" name="PP 2"/>
        </ownedSystemComponents>
        <ownedSystemComponents xsi:type="org.polarsys.capella.core.data.ctx:SystemComponent"
            id="7d14dcd3-074c-41e0-858f-5dcb23bdd22d" name="Véhicule routier" actor="true"
            human="true">
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="b1d18b51-5796-4a07-9b30-47bee37599f8" targetElement="#cfc58852-4e1a-4659-bf6b-09796d19b588"
              sourceElement="#0ed44e90-6388-4dd4-a789-baf8ad11848f"/>
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="5d6d08c3-4100-4172-82ac-7e232b36b259" targetElement="#5aa74b40-7de1-44cd-9ed3-2c45b29562c7"
              sourceElement="#f87baa8e-2c97-4b17-af87-fa57389b082b"/>
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="15bd0b1a-c8bb-4d6c-958d-2f69d7325f92" targetElement="#5c652e34-2ad7-412e-87f3-66f635a042c6"
              sourceElement="#e0ebe367-2e52-4aa0-8c6c-9c0e22a50825"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="0ed44e90-6388-4dd4-a789-baf8ad11848f" targetElement="#842ef64e-a2a8-4f33-bfcc-f5748dcc4bff"
              sourceElement="#7d14dcd3-074c-41e0-858f-5dcb23bdd22d"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="f87baa8e-2c97-4b17-af87-fa57389b082b" targetElement="#03327669-186a-4e17-8b02-2b9170d66d53"
              sourceElement="#7d14dcd3-074c-41e0-858f-5dcb23bdd22d"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="e0ebe367-2e52-4aa0-8c6c-9c0e22a50825" targetElement="#817a5ef2-28cd-4fb4-944f-15300d47014b"
              sourceElement="#7d14dcd3-074c-41e0-858f-5dcb23bdd22d"/>
          <ownedComponentRealizations xsi:type="org.polarsys.capella.core.data.cs:ComponentRealization"
              id="eb968203-15ee-420b-aaf3-97d1ba4d9b02" targetElement="#e3f59db2-3b25-4ba2-9e14-8a8c0848d2ba"
              sourceElement="#7d14dcd3-074c-41e0-858f-5dcb23bdd22d"/>
        </ownedSystemComponents>
        <ownedSystemComponents xsi:type="org.polarsys.capella.core.data.ctx:SystemComponent"
            id="6fd1911d-a4df-4db9-9836-bd7aa267f30e" name="Système d''information Gare"
            actor="true" human="true">
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="02ddbdf8-0346-492b-b2a1-a05a3f892160" targetElement="#e97875b6-00c8-4245-a388-865a71619709"
              sourceElement="#26243500-1d99-4704-8968-e2bc219cffb9"/>
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="bd867c38-214b-4b25-83b7-d80e7d2e117b" targetElement="#406711eb-9398-4b26-9f85-1028270d58b6"
              sourceElement="#3587c479-92a3-4fa0-8f7e-c29fb0df0000"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="26243500-1d99-4704-8968-e2bc219cffb9" targetElement="#f71d04ac-f98f-44ac-a54b-bf2e571b9db8"
              sourceElement="#6fd1911d-a4df-4db9-9836-bd7aa267f30e"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="3587c479-92a3-4fa0-8f7e-c29fb0df0000" targetElement="#3d6e5811-132e-4366-be8d-3c781083e703"
              sourceElement="#6fd1911d-a4df-4db9-9836-bd7aa267f30e"/>
          <ownedFeatures xsi:type="org.polarsys.capella.core.data.fa:ComponentPort"
              id="871da6ff-b8db-49ce-9f5a-eba4a68cb4e9" name="CP 1" orientation="OUT"
              kind="FLOW">
            <ownedPortAllocations xsi:type="org.polarsys.capella.core.data.information:PortAllocation"
                id="ea5211c2-f816-4d22-97a0-53b4e531877f" targetElement="#05ba128d-b3a0-4a1b-b24e-d163a8b2271f"
                sourceElement="#871da6ff-b8db-49ce-9f5a-eba4a68cb4e9"/>
            <ownedPortAllocations xsi:type="org.polarsys.capella.core.data.information:PortAllocation"
                id="fb5f99ff-6372-4cd9-a3a9-bd5883448c9f" targetElement="#c1ef73d3-2dae-476f-a369-e99638749581"
                sourceElement="#871da6ff-b8db-49ce-9f5a-eba4a68cb4e9"/>
          </ownedFeatures>
          <ownedFeatures xsi:type="org.polarsys.capella.core.data.cs:PhysicalPort"
              id="e2ba23b7-425b-45ec-8e13-df0b9c9288f5" name="PP 2"/>
          <ownedComponentRealizations xsi:type="org.polarsys.capella.core.data.cs:ComponentRealization"
              id="a4c0210e-3819-41b4-9fc7-0da2b0174d8c" targetElement="#9ae48c31-a7fd-4c63-8692-572d4d9f1766"
              sourceElement="#6fd1911d-a4df-4db9-9836-bd7aa267f30e"/>
        </ownedSystemComponents>
        <ownedSystemComponents xsi:type="org.polarsys.capella.core.data.ctx:SystemComponent"
            id="7a7db02a-3a73-4972-b4d0-2f8c25ae06ed" name="Opérateurs de régulation du trafic"
            actor="true" human="true">
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="dc739b27-b91a-43aa-adf4-b987c02e97e5" targetElement="#9f18bb3d-beea-445c-a069-1fb38ab56b28"
              sourceElement="#a00f6852-d7af-46d0-bc21-c284d715dc2b"/>
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="bd6db24e-e70b-43e0-9fcb-b170b246a34f" targetElement="#3af1b8ab-2b98-4423-b44b-25baa50ca567"
              sourceElement="#a56fadf8-22bc-48a6-ab72-85c277143ea5"/>
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="b7f45f04-eee4-4871-9ef1-1d526499ade2" targetElement="#703cb826-32d6-44e1-b1a7-bca914557c82"
              sourceElement="#e3ca7187-6c7d-4778-8765-9c36255d3f70"/>
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="3d10b4de-0522-4a0c-9f48-b861cb81714c" targetElement="#a7e1d2e9-a000-484e-8363-83c34f588735"
              sourceElement="#b8ab548d-8d9d-4dd0-a03c-2f1e8a1b089f"/>
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="add114a7-4bf6-42f2-b09b-ead2e4a8e674" targetElement="#e835393a-94e9-4076-be0b-1e52c029cfce"
              sourceElement="#39511cbc-c534-471f-9f59-8288d32d4c1a"/>
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="55ed145b-8363-493a-b8a6-cb239b918885" targetElement="#e9939881-8dde-4128-8c9a-ecd46c310444"
              sourceElement="#3a6eb084-0666-410a-b17b-f2d4a86a1727"/>
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="397cbae7-d765-4c57-99b7-e26846712936" targetElement="#be3c3d87-d4c6-4792-b8a1-6af8e1dde0fb"
              sourceElement="#c28c1ebe-04bb-4076-b1b9-a278691ab025"/>
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="0910769b-547f-496f-90d9-ce946523dfb8" targetElement="#3ab54764-503e-44be-a199-d18d749b5185"
              sourceElement="#6bd0415e-b650-4488-b082-7b0ebfb4b63a"/>
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="68be4055-5832-419f-b7dd-486b7142e697" targetElement="#223aee1e-3a17-4a9f-a79e-84738fea71a6"
              sourceElement="#8814bcf4-5e79-430d-a5fa-020dac37d3f2"/>
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="a0ae551a-c418-438a-b44c-f63eb830f3c3" targetElement="#8937d700-a8d8-4aa4-b40f-61e479a1029f"
              sourceElement="#52b0cfe1-36f0-4f2a-b5d9-e483d40c34fa"/>
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="c4a0a14b-77cd-4561-86b3-451916d2f3cc" targetElement="#ef8ff1aa-bc5e-4c00-a994-d518c07aa3f7"
              sourceElement="#6d03b326-816f-4456-a041-82a4c5f087f1"/>
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="0b748692-af18-40f4-9a90-75e487359124" targetElement="#5e920a6a-c58e-4be8-8dbe-c01af70769e1"
              sourceElement="#92ed9564-c969-4242-baf8-805b624558b4"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="d724e9cb-4f08-4c57-b1a3-8c0be64bb431" targetElement="#c6d78358-b8cc-43bd-b8de-73f6ca67938d"
              sourceElement="#7a7db02a-3a73-4972-b4d0-2f8c25ae06ed"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="12b20db3-ed88-47f0-8b86-7c8571c56e96" targetElement="#744d29c0-81a5-47d8-a755-5a0d3a7cda8c"
              sourceElement="#7a7db02a-3a73-4972-b4d0-2f8c25ae06ed"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="9bd2c2ae-60eb-4738-9373-e31ebfd8729d" targetElement="#25f0cf4f-0362-4590-8cd2-ca1851f0a369"
              sourceElement="#7a7db02a-3a73-4972-b4d0-2f8c25ae06ed"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="7967bdc3-6d04-4c20-839d-1e148b195729" targetElement="#c35f1b2a-5b8d-42d7-8bd4-3c4272b6f7df"
              sourceElement="#7a7db02a-3a73-4972-b4d0-2f8c25ae06ed"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="a397cd7b-1532-4544-ade9-dd2c871b1494" targetElement="#01659fc9-926e-4515-9f90-86a4f591db6e"
              sourceElement="#7a7db02a-3a73-4972-b4d0-2f8c25ae06ed"/>
          <ownedComponentRealizations xsi:type="org.polarsys.capella.core.data.cs:ComponentRealization"
              id="c5c888ce-c5f9-414c-a662-5c954a08c1f2" targetElement="#3bb82acc-8f48-44eb-8ff7-8ab74c4e5187"
              sourceElement="#7a7db02a-3a73-4972-b4d0-2f8c25ae06ed"/>
        </ownedSystemComponents>
        <ownedSystemComponents xsi:type="org.polarsys.capella.core.data.ctx:SystemComponent"
            id="c52aa200-8bb3-4edb-8c8c-ed4f183c750d" name="Train arrivant en gare"
            actor="true" human="true">
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="6b2e4444-946a-41d8-b5e5-eba5a6897da0" targetElement="#4d320821-f6dc-4374-9759-70925165189f"
              sourceElement="#84ba9af1-526c-433f-a663-63c168bdd6c6"/>
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="62149527-6de0-4600-b707-8a5d2b79307c" targetElement="#4a5f33dd-3ac7-49db-9154-ace81ef92ffb"
              sourceElement="#1c1d9640-2f05-4b04-8c74-6b7d5245cbe4"/>
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="b354b4b8-a218-4c22-8dc5-8173a6f5246c" targetElement="#f70ed581-2372-4883-86e5-6ed78290ffac"
              sourceElement="#45467dd3-d0e9-4c7a-9cee-f635f8e1bb19"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="84ba9af1-526c-433f-a663-63c168bdd6c6" targetElement="#fc31f93c-a6cc-43c8-bafa-15e2535c4cb4"
              sourceElement="#c52aa200-8bb3-4edb-8c8c-ed4f183c750d"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="1c1d9640-2f05-4b04-8c74-6b7d5245cbe4" targetElement="#7919d7bb-edbf-4f20-87d9-7e87659fa3f4"
              sourceElement="#c52aa200-8bb3-4edb-8c8c-ed4f183c750d"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="45467dd3-d0e9-4c7a-9cee-f635f8e1bb19" targetElement="#5ec58430-4c8f-44c2-abbe-0077fe77989e"
              sourceElement="#c52aa200-8bb3-4edb-8c8c-ed4f183c750d"/>
          <ownedComponentRealizations xsi:type="org.polarsys.capella.core.data.cs:ComponentRealization"
              id="13143edc-2f8f-4155-a92b-1c74e394cb39" targetElement="#0d752e69-bf57-4f26-93eb-2c9a4bcf7c5d"
              sourceElement="#c52aa200-8bb3-4edb-8c8c-ed4f183c750d"/>
        </ownedSystemComponents>
        <ownedSystemComponents xsi:type="org.polarsys.capella.core.data.ctx:SystemComponent"
            id="10b8a96e-76e6-4e3b-a071-b42338c92795" name="Train en partance" actor="true"
            human="true">
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="5cf7039d-bc66-46ab-9fd3-3b132b517df9" targetElement="#122d3117-17ae-4980-a556-5ccce79431fe"
              sourceElement="#d5207cd1-edfa-4f13-b583-3d2c16d5e751"/>
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="7abce0fa-8b79-49d6-ac2e-b99495ccfb4e" targetElement="#8f49a55c-8e5a-4cff-8d55-225ee45c9297"
              sourceElement="#4e308446-ac99-48fa-88b4-02005e6f0b79"/>
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="c78da88a-ac10-4730-b4ce-672682bd7e15" targetElement="#f3bea2d7-2a42-489a-9044-0a7e4a3c9946"
              sourceElement="#6402655c-a629-4d7f-ae2d-2371b1ab8ee1"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="d5207cd1-edfa-4f13-b583-3d2c16d5e751" targetElement="#cc600fc2-e6af-486c-9346-69b49cc8cb21"
              sourceElement="#10b8a96e-76e6-4e3b-a071-b42338c92795"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="4e308446-ac99-48fa-88b4-02005e6f0b79" targetElement="#ecf9a6e4-7eb7-4428-ab4f-f61e29c92624"
              sourceElement="#10b8a96e-76e6-4e3b-a071-b42338c92795"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="6402655c-a629-4d7f-ae2d-2371b1ab8ee1" targetElement="#f845f6d1-b10a-4cb2-b8ad-4cf46da4b0eb"
              sourceElement="#10b8a96e-76e6-4e3b-a071-b42338c92795"/>
          <ownedComponentRealizations xsi:type="org.polarsys.capella.core.data.cs:ComponentRealization"
              id="c5d252c4-118d-4b2b-9d40-82b61e40d9ad" targetElement="#988eabd8-1310-4902-9030-3b584db9176e"
              sourceElement="#10b8a96e-76e6-4e3b-a071-b42338c92795"/>
        </ownedSystemComponents>
      </ownedSystemComponentPkg>
      <ownedMissionPkg xsi:type="org.polarsys.capella.core.data.ctx:MissionPkg" id="0775310d-ffd3-4736-adcc-a75aaa60c888"
          name="Missions">
        <ownedMissions xsi:type="org.polarsys.capella.core.data.ctx:Mission" id="c501b048-6357-4bcd-b31c-6021eed3dfe2"
            name="Empécher toute collision entre train et véhicules routiers">
          <ownedMissionInvolvements xsi:type="org.polarsys.capella.core.data.ctx:MissionInvolvement"
              id="04f6adfe-ed90-44f6-92da-91460dade2ce" involved="#7d14dcd3-074c-41e0-858f-5dcb23bdd22d"/>
          <ownedMissionInvolvements xsi:type="org.polarsys.capella.core.data.ctx:MissionInvolvement"
              id="8df0af67-1f3f-4dd5-bdab-a81467b8ffec" involved="#6fd1911d-a4df-4db9-9836-bd7aa267f30e"/>
          <ownedMissionInvolvements xsi:type="org.polarsys.capella.core.data.ctx:MissionInvolvement"
              id="8214ba82-ed3f-4788-a61e-bd7a62e0e373" involved="#10b8a96e-76e6-4e3b-a071-b42338c92795"/>
          <ownedMissionInvolvements xsi:type="org.polarsys.capella.core.data.ctx:MissionInvolvement"
              id="4fd380b8-bc48-4e51-9116-bc093fc15adc" involved="#04b21b99-27d1-492a-a49f-fa157f7b7b54"/>
          <ownedCapabilityExploitations xsi:type="org.polarsys.capella.core.data.ctx:CapabilityExploitation"
              id="00111e1e-025c-4377-9d54-0658cb0dc427" capability="#94a788d0-1a5c-434a-ba24-e6047e8d8135"/>
          <ownedCapabilityExploitations xsi:type="org.polarsys.capella.core.data.ctx:CapabilityExploitation"
              id="92cc3b07-d9ff-4832-8e61-442fff735fc4" capability="#82b1a2f2-cdc6-4ea0-bd4d-aad1c20f0253"/>
          <ownedCapabilityExploitations xsi:type="org.polarsys.capella.core.data.ctx:CapabilityExploitation"
              id="c6abf94e-65cd-418c-8850-9092738ba385" capability="#4699170a-7aa0-405c-9b2e-7c6885c1e3b8"/>
        </ownedMissions>
        <ownedMissions xsi:type="org.polarsys.capella.core.data.ctx:Mission" id="8b564db6-6916-426a-ad3f-cb7861f8782c"
            name="Assurer la circulation fluide des trains et véhicules routiers">
          <ownedMissionInvolvements xsi:type="org.polarsys.capella.core.data.ctx:MissionInvolvement"
              id="3aefd719-f963-42de-9e13-fe826c2aae36" involved="#04b21b99-27d1-492a-a49f-fa157f7b7b54"/>
          <ownedCapabilityExploitations xsi:type="org.polarsys.capella.core.data.ctx:CapabilityExploitation"
              id="3521dfec-a78c-4cc7-b80b-9090106cd949" capability="#f98263a7-c9cc-49d9-af52-f7dbd44b0ab7"/>
        </ownedMissions>
      </ownedMissionPkg>
      <ownedOperationalAnalysisRealizations xsi:type="org.polarsys.capella.core.data.ctx:OperationalAnalysisRealization"
          id="f28cb377-a97d-43bd-8800-dea778cb1be1" targetElement="#54387edb-d00e-4668-9578-86d622908508"
          sourceElement="#5b7dc2fa-baeb-4b3d-87d2-bdc8ef699cdb"/>
    </ownedArchitectures>
  </ownedModelRoots>
</org.polarsys.capella.core.data.capellamodeller:Project>
'
]

{ #category : 'examples' }
PNRequirementsDuplicate class >> ensureCapellaFileIsCreated [

	| filesystem |
	filesystem := FileSystem memory.
	file := filesystem workingDirectory / 'CtPTest.CAPELLA'.
	file writeStreamDo: [ :stream |
		stream nextPutAll: self capellaFileContent ]
]

{ #category : 'accessing' }
PNRequirementsDuplicate class >> file [

	<script: 'PNRequirementsDuplicate ensureCapellaFileIsCreated'>
	file ifNil: [ self ensureCapellaFileIsCreated ].
	^ file
]

{ #category : 'as yet unclassified' }
PNRequirementsDuplicate class >> importAllRequirements [

	<script: 'PNRequirementsDuplicate importAllRequirements'>
	| capellaDocument fc1 fc2 fc3 allInvolvments allFunctions allExchanges allChains |
	capellaDocument := XMLDOMParser parse:
		                   self file asFileReference contents.
	fc1 := ((XPath for: '//*[@id="3c43ab9f-d00d-4f1c-a588-f5ccb18ce101"]')
		        in: capellaDocument) asArray first. "Déblocage du train au départ"
	fc2 := ((XPath for: '//*[@id="39f5b423-5955-49e3-a1d7-9bc8b81d49e1"]')
		        in: capellaDocument) asArray first. "Blocage du train au départ"
	fc3 := ((XPath for: '//*[@id="bb356708-cda9-4680-9167-e0bf8dcc33a1"]')
		        in: capellaDocument) asArray first. "Détection du passage du train"

	allChains := {
		             fc1.
		             fc2.
		             fc3 }.
	allInvolvments := allChains flatCollect: [ :each |
			                  | ret |
			                  ret := (XPath
				                          for: 'ownedFunctionalChainInvolvements'
				                          in: each) asArray.
			                  ret := ret collect: [ :obj |
				                         (obj attributeAt: 'involved') allButFirst ].
			                  ret := ret flatCollect: [ :obj |
				                         (XPath
					                          for: '//*[@id="' , obj , '"]'
					                          in: capellaDocument) asArray ] ].
	allFunctions := (allInvolvments select: [ :each |
		                 each name = 'ownedFunctions' ]) asOrderedCollection
		                removeDuplicates.
	allExchanges := (allInvolvments select: [ :each |
		                 each name = 'ownedFunctionalExchanges' ])
		                asOrderedCollection removeDuplicates.

	self
		importFunctions: allFunctions
		exchanges: allExchanges
		chains: allChains
]

{ #category : 'as yet unclassified' }
PNRequirementsDuplicate class >> importChains: aChain atIndex: anInteger withFunctions: functions withExchanges: exchanges [

	| ids linkedFunctions linkedExchanges template id n description body linkedStrings accu |
	ids := (XPath for: 'ownedFunctionalChainInvolvements' in: aChain)
		       asArray collect: [ :node |
		       (node attributeAt: 'involved') allButFirst ].
	linkedFunctions := functions select: [ :each |
		                   ids includes: (each attributeAt: 'id') ].
	linkedExchanges := exchanges select: [ :each |
		                   ids includes: (each attributeAt: 'id') ].

	template := 'capellaFunctionalChain<1p><r><r><t>%<ExA: #PassageNiveauDuplicated><r><t>^ ExACapellaAnnotation new<r><t><t>file: self file;<r><t><t>id: <2p>;<r><t><t>name: <3p>;<r><t><t>description: <4p>;<r><t><t>linkedAnnotations: <5s>;<r><t><t>yourself'.
	id := aChain attributeAt: 'id'.
	n := aChain attributeAt: 'name'.
	description := 'A capella chain.'.
	linkedStrings := linkedFunctions collect: [ :each |
		                 'self capellaFunction<1p>' expandMacrosWith:
			                 (functions indexOf: each) ].
	linkedStrings := linkedStrings , (linkedExchanges collect: [ :each |
			                  'self capellaFunctionalExchange<1p>'
				                  expandMacrosWith: (exchanges indexOf: each) ]).
	accu := '{<r>'.
	linkedStrings
		do: [ :s | accu := accu , '<t><t><t>' , s ]
		separatedBy: [ accu := accu , '.<r>' ].
	accu := accu , '<r><t><t>}'.

	body := template expandMacrosWithArguments: {
			        anInteger.
			        id.
			        n.
			        description.
			        accu expandMacros }.
	self class compile: body classified: #generated
]

{ #category : 'as yet unclassified' }
PNRequirementsDuplicate class >> importExchanges: exchange atIndex: index withFunctions: functions [

	| inputPort outputPort inputFunction outputFunction template id n description body |
	inputPort := (exchange attributeAt: 'target') allButFirst.
	outputPort := (exchange attributeAt: 'source') allButFirst.
	inputFunction := (functions select: [ :f |
			                  ((XPath for: 'inputs[@id="' , inputPort , '"]')
				                   in: f) asArray isNotEmpty ]) first.
	outputFunction := (functions select: [ :f |
			                   ((XPath for: 'outputs[@id="' , outputPort , '"]')
				                    in: f) asArray isNotEmpty ]) first.

	template := 'capellaFunctionalExchange<1p><r><r><t>%<ExA: #PassageNiveauDuplicated><r><t>^ ExACapellaAnnotation new<r><t><t>file: self file;<r><t><t>id: <2p>;<r><t><t>name: <3p>;<r><t><t>description: <4p>;<r><t><t>linkedAnnotations: { self capellaFunction<5p> . self capellaFunction<6p> };<r><t><t>yourself'.
	id := exchange attributeAt: 'id'.
	n := exchange attributeAt: 'name'.
	description := 'A capella exchange.<r>The function "<1s>" send "<2s>" to the function "<3s>".'
		               expandMacrosWithArguments: {
				               (outputFunction attributeAt: 'name').
				               n.
				               (inputFunction attributeAt: 'name') }.
	body := template expandMacrosWithArguments: {
			        index.
			        id.
			        n.
			        description.
			        (functions indexOf: outputFunction).
			        (functions indexOf: inputFunction) }.
	self class compile: body classified: #generated
]

{ #category : 'as yet unclassified' }
PNRequirementsDuplicate class >> importFunction: aFunction atIndex: anInteger [

	| template id n description body |
	template := 'capellaFunction<1p><r><r><t>%<ExA: #PassageNiveauDuplicated><r><t>^ ExACapellaAnnotation new<r><t><t>file: self file;<r><t><t>id: <2p>;<r><t><t>name: <3p>;<r><t><t>description: <4p>;<r><t><t>yourself'.
	id := aFunction attributeAt: 'id'.
	n := aFunction attributeAt: 'name'.
	description := 'A capella function.'.
	body := template expandMacrosWithArguments: {
			        anInteger.
			        id.
			        n.
			        description }.
	self class compile: body classified: #generated
]

{ #category : 'as yet unclassified' }
PNRequirementsDuplicate class >> importFunctions: functions exchanges: exchanges chains: chains [

	functions doWithIndex: [ :function :index |
		self importFunction: function atIndex: index ].
	exchanges doWithIndex: [ :exchange :index |
		self
			importExchanges: exchange
			atIndex: index
			withFunctions: functions ].
	chains doWithIndex: [ :chain :index |
		self
			importChains: chain
			atIndex: index
			withFunctions: functions
			withExchanges: exchanges ]
]
