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
          <Name>Significant NAFRA Polygon</Name>
          <Title></Title>

          <!-- like a polygonsymbolizer -->
        <ogc:Filter>
          <ogc:PropertyIsLike  wildCard="*" singleChar="." escape="!">
            <ogc:PropertyName>prob_band</ogc:PropertyName>
            <ogc:Literal>Significant*</ogc:Literal>
            </ogc:PropertyIsLike>
        </ogc:Filter>
          <PolygonSymbolizer>
            <Fill>
             <!-- <CssParameter name="fill">#FF0000</CssParameter>-->
              <CssParameter name="fill">#0000FF</CssParameter>
              <CssParameter name="fill-opacity">0.6</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
        
        <Rule>
          <Name>Moderate NAFRA Polygon</Name>
          <Title></Title>

          <!-- like a polygonsymbolizer -->
        <ogc:Filter>
          <ogc:PropertyIsLike  wildCard="*" singleChar="." escape="!">
            <ogc:PropertyName>prob_band</ogc:PropertyName>
            <ogc:Literal>Moderate*</ogc:Literal>
            </ogc:PropertyIsLike>
        </ogc:Filter>
          <PolygonSymbolizer>
            <Fill>
              <!--<CssParameter name="fill">#0000FF</CssParameter>-->
              <CssParameter name="fill">#0000FF</CssParameter>
              <CssParameter name="fill-opacity">0.4</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
        
        <Rule>
          <Name>Low NAFRA Polygon</Name>
          <Title></Title>

          <!-- like a polygonsymbolizer -->
        <ogc:Filter>
          <ogc:PropertyIsLike  wildCard="*" singleChar="." escape="!">
            <ogc:PropertyName>prob_band</ogc:PropertyName>
            <ogc:Literal>Low*</ogc:Literal>
            </ogc:PropertyIsLike>
        </ogc:Filter>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#0000FF</CssParameter>
              <CssParameter name="fill-opacity">0.2</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>

      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>