<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0" 
 xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" 
 xmlns="http://www.opengis.net/sld" 
 xmlns:ogc="http://www.opengis.net/ogc" 
 xmlns:xlink="http://www.w3.org/1999/xlink" 
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <!-- a Named Layer is the basic building block of an SLD document -->
  <NamedLayer>
    <Name>highlight_fwa</Name>
    <UserStyle>
    <!-- Styles can have names, titles and abstracts -->
      <Title>Highlight Flood Warning Area</Title>
      <Abstract>Highlight a flood alert/warning target area</Abstract>
      <!-- FeatureTypeStyles describe how to render different features -->
      <!-- A FeatureTypeStyle for rendering polygons -->
      <FeatureTypeStyle>                
        <Rule>
          <Name>Severe Flood Warning</Name>
          <Title></Title>
          <!-- like a polygonsymbolizer -->
        <ogc:Filter>
          <ogc:PropertyIsLike  wildCard="*" singleChar="." escape="!">
            <ogc:PropertyName>severity_description</ogc:PropertyName>
            <ogc:Literal>Severe Flood Warning*</ogc:Literal>
            </ogc:PropertyIsLike>
        </ogc:Filter>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#FF0000</CssParameter>
              <CssParameter name="fill-opacity">0.75</CssParameter>
            </Fill>
            <Stroke>
              <CssParameter name="stroke">#FF0000</CssParameter>
              <CssParameter name="stroke-width">1</CssParameter>
            </Stroke>            
          </PolygonSymbolizer>
        </Rule>
        <Rule>
          <Name>Flood Warning</Name>
          <Title></Title>
          <!-- like a polygonsymbolizer -->
        <ogc:Filter>
          <ogc:PropertyIsLike  wildCard="*" singleChar="." escape="!">
            <ogc:PropertyName>severity_description</ogc:PropertyName>
            <ogc:Literal>Flood Warning*</ogc:Literal>
            </ogc:PropertyIsLike>
        </ogc:Filter>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#FF0000</CssParameter>
              <CssParameter name="fill-opacity">0.75</CssParameter>
            </Fill>
            <Stroke>
              <CssParameter name="stroke">#FF0000</CssParameter>
              <CssParameter name="stroke-width">1</CssParameter>
            </Stroke>            
          </PolygonSymbolizer>
        </Rule>
        <Rule>
          <Name>Flood Alert</Name>
          <Title></Title>
          <!-- like a polygonsymbolizer -->
        <ogc:Filter>
          <ogc:PropertyIsLike  wildCard="*" singleChar="." escape="!">
            <ogc:PropertyName>severity_description</ogc:PropertyName>
            <ogc:Literal>Flood Alert*</ogc:Literal>
            </ogc:PropertyIsLike>
        </ogc:Filter>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#FF8000</CssParameter>
              <CssParameter name="fill-opacity">0.75</CssParameter>
            </Fill>
            <Stroke>
              <CssParameter name="stroke">#FF8000</CssParameter>
              <CssParameter name="stroke-width">1</CssParameter>
            </Stroke>            
          </PolygonSymbolizer>
        </Rule>
        <Rule>
          <Name>Warning No Longer In Force</Name>
          <Title></Title>
          <!-- like a polygonsymbolizer -->
        <ogc:Filter>
          <ogc:PropertyIsLike  wildCard="*" singleChar="." escape="!">
            <ogc:PropertyName>severity_description</ogc:PropertyName>
            <ogc:Literal>Warning no longer in force*</ogc:Literal>
            </ogc:PropertyIsLike>
        </ogc:Filter>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#CDCDCD</CssParameter>
              <CssParameter name="fill-opacity">0.75</CssParameter>
            </Fill>
            <Stroke>
              <CssParameter name="stroke">#CDCDCD</CssParameter>
              <CssParameter name="stroke-width">1</CssParameter>
            </Stroke>            
          </PolygonSymbolizer>
        </Rule>        
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>