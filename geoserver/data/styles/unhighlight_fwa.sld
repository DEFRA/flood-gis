<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0" 
 xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" 
 xmlns="http://www.opengis.net/sld" 
 xmlns:ogc="http://www.opengis.net/ogc" 
 xmlns:xlink="http://www.w3.org/1999/xlink" 
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <!-- a Named Layer is the basic building block of an SLD document -->
  <NamedLayer>
    <Name>unhighlight_fwa</Name>
    <UserStyle>
    <!-- Styles can have names, titles and abstracts -->
      <Title>Unhighlight Flood Warning Area</Title>
      <Abstract>Unhighlight a flood alert/warning target area</Abstract>
      <!-- FeatureTypeStyles describe how to render different features -->
      <!-- A FeatureTypeStyle for rendering polygons -->
      <FeatureTypeStyle>                
        <Rule>
          <Name>Severe Flood Warning</Name>
          <Title></Title>
          <!-- like a polygonsymbolizer -->
        <ogc:Filter>
          <ogc:PropertyIsLike  wildCard="*" singleChar="." escape="!">
            <ogc:PropertyName>severity</ogc:PropertyName>
            <ogc:Literal>Severe Flood Warning*</ogc:Literal>
            </ogc:PropertyIsLike>
        </ogc:Filter>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#E3000F</CssParameter>
              <CssParameter name="fill-opacity">1</CssParameter>
            </Fill>        
          </PolygonSymbolizer>
                    <PolygonSymbolizer>
            <Fill>
              <GraphicFill>
                <Graphic>
                  <Mark>
                    <WellKnownName>shape://backslash</WellKnownName>
                    <Stroke>
                      <CssParameter name="stroke">#ffffff</CssParameter>
                      <CssParameter name="stroke-width">1</CssParameter>
                    </Stroke>
                  </Mark>
                  <Size>9</Size>
                </Graphic>
              </GraphicFill>
            </Fill>            
          </PolygonSymbolizer>
          <PolygonSymbolizer>
            <Fill>
              <GraphicFill>
                <Graphic>
                  <Mark>
                    <WellKnownName>shape://slash</WellKnownName>
                    <Stroke>
                      <CssParameter name="stroke">#ffffff</CssParameter>
                      <CssParameter name="stroke-width">1</CssParameter>
                    </Stroke>
                  </Mark>
                  <Size>9</Size>
                </Graphic>
              </GraphicFill>
            </Fill>            
          </PolygonSymbolizer>
        </Rule>
        <Rule>
          <Name>Flood Warning</Name>
          <Title></Title>
          <!-- like a polygonsymbolizer -->
        <ogc:Filter>
          <ogc:PropertyIsLike  wildCard="*" singleChar="." escape="!">
            <ogc:PropertyName>severity</ogc:PropertyName>
            <ogc:Literal>Flood Warning*</ogc:Literal>
            </ogc:PropertyIsLike>
        </ogc:Filter>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#E3000F</CssParameter>
              <CssParameter name="fill-opacity">1</CssParameter>
            </Fill>         
          </PolygonSymbolizer>
          <PolygonSymbolizer>
            <Fill>
              <GraphicFill>
                <Graphic>
                  <Mark>
                    <WellKnownName>shape://vertline</WellKnownName>
                    <Stroke>
                      <CssParameter name="stroke">#ffffff</CssParameter>
                      <CssParameter name="stroke-width">1</CssParameter>
                    </Stroke>
                  </Mark>
                  <Size>9</Size>
                </Graphic>
              </GraphicFill>
            </Fill>            
          </PolygonSymbolizer>
        </Rule>
        <Rule>
          <Name>Flood Alert</Name>
          <Title></Title>
          <!-- like a polygonsymbolizer -->
        <ogc:Filter>
          <ogc:PropertyIsLike  wildCard="*" singleChar="." escape="!">
            <ogc:PropertyName>severity</ogc:PropertyName>
            <ogc:Literal>Flood Alert*</ogc:Literal>
            </ogc:PropertyIsLike>
        </ogc:Filter>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#F18700</CssParameter>
              <CssParameter name="fill-opacity">1</CssParameter>
            </Fill>
          </PolygonSymbolizer>
          <PolygonSymbolizer>
            <Fill>
              <GraphicFill>
                <Graphic>
                  <Mark>
                    <WellKnownName>shape://slash</WellKnownName>
                    <Stroke>
                      <CssParameter name="stroke">#ffffff</CssParameter>
                      <CssParameter name="stroke-width">1</CssParameter>
                    </Stroke>
                  </Mark>
                  <Size>10</Size>
                </Graphic>
              </GraphicFill>
            </Fill>            
          </PolygonSymbolizer>
        </Rule>
        <Rule>
          <Name>Warning No Longer In Force</Name>
          <Title></Title>
          <!-- like a polygonsymbolizer -->
        <ogc:Filter>
          <ogc:PropertyIsLike  wildCard="*" singleChar="." escape="!">
            <ogc:PropertyName>severity</ogc:PropertyName>
            <ogc:Literal>Warning no longer in force*</ogc:Literal>
            </ogc:PropertyIsLike>
        </ogc:Filter>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#6E767A</CssParameter>
              <CssParameter name="fill-opacity">1</CssParameter>
            </Fill>
          </PolygonSymbolizer>
          <PolygonSymbolizer>
            <Fill>
              <GraphicFill>
                <Graphic>
                  <Mark>
                    <WellKnownName>shape://horline</WellKnownName>
                    <Stroke>
                      <CssParameter name="stroke">#ffffff</CssParameter>
                      <CssParameter name="stroke-width">1</CssParameter>
                    </Stroke>
                  </Mark>
                  <Size>9</Size>
                </Graphic>
              </GraphicFill>
            </Fill>            
          </PolygonSymbolizer>
        </Rule>        
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>