<?xml version="1.0" encoding="ISO-8859-1"?>
 <StyledLayerDescriptor version="1.0.0"
  xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd"
  xmlns="http://www.opengis.net/sld"
  xmlns:ogc="http://www.opengis.net/ogc"
  xmlns:xlink="http://www.w3.org/1999/xlink"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <NamedLayer>
   <Name>Cluster points</Name>
   <UserStyle>
   <!-- Styles can have names, titles and abstracts -->
    <Title>Cluster points</Title>
    <Abstract>Styling using cluster points server side</Abstract>
    <FeatureTypeStyle>
     <Transformation>
        <ogc:Function name="vec:PointStacker">
          <ogc:Function name="parameter">
            <ogc:Literal>data</ogc:Literal>
          </ogc:Function>
          <ogc:Function name="parameter">
            <ogc:Literal>cellSize</ogc:Literal>
            <ogc:Literal>30</ogc:Literal>
          </ogc:Function>
          <ogc:Function name="parameter">
            <ogc:Literal>outputBBOX</ogc:Literal>
            <ogc:Function name="env">
           <ogc:Literal>wms_bbox</ogc:Literal>
            </ogc:Function>
          </ogc:Function>
          <ogc:Function name="parameter">
            <ogc:Literal>outputWidth</ogc:Literal>
            <ogc:Function name="env">
           <ogc:Literal>wms_width</ogc:Literal>
            </ogc:Function>
          </ogc:Function>
          <ogc:Function name="parameter">
            <ogc:Literal>outputHeight</ogc:Literal>
            <ogc:Function name="env">
              <ogc:Literal>wms_height</ogc:Literal>
            </ogc:Function>
          </ogc:Function>
        </ogc:Function>
      </Transformation>
     <Rule>
      <Name>rule1</Name>
      <Title>Singoli punti</Title>
      <MinScaleDenominator>2000</MinScaleDenominator>
      <PointSymbolizer>
        <Graphic>
          <Mark>
            <WellKnownName>circle</WellKnownName>
            <Fill>
              <CssParameter name="fill">#ff0000</CssParameter>
            </Fill>
          </Mark>
          <Size>6</Size>
        </Graphic>
      </PointSymbolizer>
     </Rule>
     <Rule>
        <Name>ruleGT1</Name>
        <Title>Cluster</Title>
        <ogc:Filter>
          <ogc:PropertyIsGreaterThan>
            <ogc:PropertyName>count</ogc:PropertyName>
            <ogc:Literal>0</ogc:Literal>
          </ogc:PropertyIsGreaterThan>
        </ogc:Filter>
        <MaxScaleDenominator>10000000</MaxScaleDenominator>
        <PointSymbolizer>
          <Graphic>
            <Mark>
              <WellKnownName>circle</WellKnownName>
              <Fill>
                <CssParameter name="fill">#ff0000</CssParameter>
              </Fill>
            </Mark>
            <Size>22</Size>
          </Graphic>
        </PointSymbolizer>
        <TextSymbolizer>
          <Label>
            <ogc:PropertyName>count</ogc:PropertyName>
          </Label>
          <Font>
            <CssParameter name="font-family">Arial</CssParameter>
            <CssParameter name="font-size">12</CssParameter>
            <CssParameter name="font-weight">bold</CssParameter>
          </Font>
          <LabelPlacement>
            <PointPlacement>
           	<AnchorPoint>
                <AnchorPointX>0.5</AnchorPointX>
                <AnchorPointY>0.8</AnchorPointY>
              </AnchorPoint>
            </PointPlacement>
          </LabelPlacement>
          <Halo>
             <Radius>2</Radius>
             <Fill>
               <CssParameter name="fill">#ff0000</CssParameter>
               <CssParameter name="fill-opacity">0.9</CssParameter>
             </Fill>
          </Halo>
          <Fill>
            <CssParameter name="fill">#FFFFFF</CssParameter>
            <CssParameter name="fill-opacity">1.0</CssParameter>
          </Fill>
        </TextSymbolizer>
      </Rule>
    </FeatureTypeStyle>
  </UserStyle>
 </NamedLayer>
</StyledLayerDescriptor>