<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0" 
    xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" 
    xmlns="http://www.opengis.net/sld" 
    xmlns:ogc="http://www.opengis.net/ogc" 
    xmlns:xlink="http://www.w3.org/1999/xlink" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <!-- a named layer is the basic building block of an sld document -->

  <NamedLayer>
    <Name>HFM</Name>
    <UserStyle>
        <!-- they have names, titles and abstracts -->
      
      <Title></Title>
      <Abstract></Abstract>
      <!-- FeatureTypeStyles describe how to render different features -->
      <!-- a feature type for lines -->

      <FeatureTypeStyle>
        <!--FeatureTypeName>Feature</FeatureTypeName-->
        <Rule>
          <Name></Name>
          <Title></Title>
       
          <!-- like a polygonsymbolizer -->
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#ff0000</CssParameter>
              <CssParameter name="fill-opacity">0.5</CssParameter>
            </Fill>
          </PolygonSymbolizer>
          
        </Rule>

        </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>