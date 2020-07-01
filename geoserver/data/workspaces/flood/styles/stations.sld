<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0" 
 xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" 
 xmlns="http://www.opengis.net/sld" 
 xmlns:ogc="http://www.opengis.net/ogc" 
 xmlns:xlink="http://www.w3.org/1999/xlink" 
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <!-- a Named Layer is the basic building block of an SLD document -->
  <NamedLayer>
    <Name>stations</Name>
    <UserStyle>
    <!-- Styles can have names, titles and abstracts -->
      <Title>Station Points</Title>
      <Abstract>Station points coloured by status</Abstract>
      <!-- FeatureTypeStyles describe how to render different features -->
      <!-- A FeatureTypeStyle for rendering points -->
      <FeatureTypeStyle>
        <Rule>
          <Name></Name>
          <Title>At Risk</Title>
          <Abstract>Stations at risk of flooding</Abstract>
            <Filter xmlns="http://www.opengis.net/ogc">
              <And>
                <PropertyIsEqualTo>
                  <PropertyName>atrisk</PropertyName>
                    <Literal>true</Literal>
                </PropertyIsEqualTo>
                <PropertyIsNotEqualTo>
                  <PropertyName>type</PropertyName>
                    <Literal>C</Literal>
                </PropertyIsNotEqualTo>
                <PropertyIsNotEqualTo>
                  <PropertyName>type</PropertyName>
                    <Literal>G</Literal>
                </PropertyIsNotEqualTo>                 
              </And>
            </Filter>          
            <PointSymbolizer>
              <Graphic>
                <Mark>
                  <WellKnownName>circle</WellKnownName>
                  <Fill>
                    <CssParameter name="fill">#EC7A21</CssParameter>
                  </Fill>
                  <Stroke>
                    <CssParameter name="stroke">#000000</CssParameter>
                    <CssParameter name="stroke-width">1</CssParameter>
                  </Stroke>
                </Mark>
              <Size>6</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>
          <Name></Name>
          <Title>Status</Title>
          <Abstract>Stations suspended or closed</Abstract>
            <Filter xmlns="http://www.opengis.net/ogc">
              <Or>
              	<PropertyIsEqualTo>
                	<PropertyName>status</PropertyName>
                  	<Literal>Closed</Literal>                  
              	</PropertyIsEqualTo>
              	<PropertyIsEqualTo>
                	<PropertyName>status</PropertyName>
                  	<Literal>Suspended</Literal>                  
              	</PropertyIsEqualTo>                
              </Or>  
            </Filter>          
            <PointSymbolizer>
              <Graphic>
                <Mark>
                  <WellKnownName>circle</WellKnownName>
                  <Fill>
                    <CssParameter name="fill">#858585</CssParameter>
                  </Fill>
                  <Stroke>
                    <CssParameter name="stroke">#000000</CssParameter>
                    <CssParameter name="stroke-width">1</CssParameter>
                  </Stroke>
                </Mark>
              <Size>6</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>
          <Name></Name>
          <Title>Typical</Title>
          <Abstract>Stations within typical range</Abstract>
            <Filter xmlns="http://www.opengis.net/ogc">
              <And>
                <Or>
                  <PropertyIsEqualTo>
                    <PropertyName>atrisk</PropertyName>
                      <Literal>false</Literal>
                  </PropertyIsEqualTo>
                  <PropertyIsEqualTo>
                    <PropertyName>type</PropertyName>
                      <Literal>C</Literal>
                  </PropertyIsEqualTo>
                  <PropertyIsEqualTo>
                    <PropertyName>type</PropertyName>
                      <Literal>G</Literal>
                  </PropertyIsEqualTo>                                    
                </Or>
              	<PropertyIsNotEqualTo>
                	<PropertyName>status</PropertyName>
                  	<Literal>Closed</Literal>                  
              	</PropertyIsNotEqualTo>
              	<PropertyIsNotEqualTo>
                	<PropertyName>status</PropertyName>
                  	<Literal>Suspended</Literal>                  
              	</PropertyIsNotEqualTo>                
              </And>  
            </Filter>              
            <PointSymbolizer>
              <Graphic>
                <Mark>
                  <WellKnownName>circle</WellKnownName>
                  <Fill>
                    <CssParameter name="fill">#2A69AF</CssParameter>
                  </Fill>
                  <Stroke>
                    <CssParameter name="stroke">#000000</CssParameter>
                    <CssParameter name="stroke-width">1</CssParameter>                  
                  </Stroke>
                </Mark>
              <Size>6</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>         
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>