<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0" 
 xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" 
 xmlns="http://www.opengis.net/sld" 
 xmlns:ogc="http://www.opengis.net/ogc" 
 xmlns:xlink="http://www.w3.org/1999/xlink" 
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <!-- a Named Layer is the basic building block of an SLD document -->
  <NamedLayer>
    <Name>default_polygon</Name>
    <UserStyle>
    <!-- Styles can have names, titles and abstracts -->
      <Title>Default Polygon</Title>
      <Abstract>A sample style that draws a polygon</Abstract>
      <!-- FeatureTypeStyles describe how to render different features -->
      <!-- A FeatureTypeStyle for rendering polygons -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Rule 1</Name>
          <Title>Black filled polygon</Title>
          <Abstract></Abstract>

          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#000000</CssParameter>
              <CssParameter name="fill-opacity">1</CssParameter>
            </Fill>
           
          </PolygonSymbolizer>
          
        </Rule>
       <!--<Rule>
          <Name>Rule 1</Name>
          <Title>Black filled polygon</Title>
          <Abstract></Abstract>

          <PolygonSymbolizer>
             <Fill>
       
           <GraphicFill>
             <Graphic>
               <Mark>
                 <WellKnownName>shape://times</WellKnownName>
                 <Stroke>
                   <CssParameter name="stroke">#FF0000</CssParameter>
                   <CssParameter name="stroke-width">2</CssParameter>
                 </Stroke>
                 </Mark>
               <Size>16</Size>
             </Graphic>
             
           </GraphicFill>
              
           
         </Fill>
          </PolygonSymbolizer>
          
        </Rule>-->
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>