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
       <PointSymbolizer>
         <Graphic>
           <ExternalGraphic>
             <OnlineResource xlink:type="simple" xlink:href="severe_flood_warning.gif" />
             <Format>image/gif</Format>
           </ExternalGraphic>
           <Size>120</Size>
         </Graphic>

       </PointSymbolizer>
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
       <PointSymbolizer>
         <Graphic>
           <ExternalGraphic>
             <OnlineResource xlink:type="simple" xlink:href="flood_warning.gif" />
             <Format>image/gif</Format>
           </ExternalGraphic>
           <Size>120</Size>
         </Graphic>
          </PointSymbolizer>
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
        <PointSymbolizer>
         <Graphic>
           <ExternalGraphic>
             <OnlineResource xlink:type="simple" xlink:href="flood_alert.gif" />
             <Format>image/gif</Format>
           </ExternalGraphic>
           <Size>120</Size>
         </Graphic>
       </PointSymbolizer>
        </Rule>

      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>