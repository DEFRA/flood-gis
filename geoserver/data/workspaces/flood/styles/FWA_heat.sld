<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0" 
 xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" 
 xmlns="http://www.opengis.net/sld" 
 xmlns:ogc="http://www.opengis.net/ogc" 
 xmlns:xlink="http://www.w3.org/1999/xlink" 
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <!-- a Named Layer is the basic building block of an SLD document -->
  <NamedLayer>
    <Name>nafraTest</Name>
    <UserStyle>
    <!-- Styles can have names, titles and abstracts -->
      <Title>nafra heat Polygons</Title>
      <Abstract>A sample style that draws a polygon</Abstract>
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
             <!-- <CssParameter name="fill">#FF0000</CssParameter>-->
              <CssParameter name="fill">#FF0000</CssParameter>
              <CssParameter name="fill-opacity">0.75</CssParameter>
            </Fill>
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
              <!--<CssParameter name="fill">#0000FF</CssParameter>-->
              <CssParameter name="fill">#FF0000</CssParameter>
              <CssParameter name="fill-opacity">0.75</CssParameter>
            </Fill>
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
              <CssParameter name="fill">#FF7F00</CssParameter>
              <CssParameter name="fill-opacity">0.75</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>

      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>