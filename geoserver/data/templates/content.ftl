<#--
Body section of the GetFeatureInfo template, it's provided with one feature collection, and
will be called multiple times if there are various feature collections
-->
<table class="featureInfo">
  <caption class="featureInfo"><h2>Layer: ${type.name}</h2> </br> Style: <img src="http://localhost:8080/geoserver/ows?service=wms&request=GetLegendGraphic&format=image%2Fpng&width=20&height=20&layer=${type.name}"/></caption>
 <tr>
<#list type.attributes as attribute>
  <#if !attribute.isGeometry>
    <th >${attribute.name}</th>
  </#if>
</#list>
  </tr>

<#assign odd = false>
<#list features as feature>
  <#if odd>
    <tr class="odd">
  <#else>
    <tr>
  </#if>
  <#assign odd = !odd>

  <#list feature.attributes as attribute>
    <#if !attribute.isGeometry>
      <td>${attribute.value}</td>
    </#if>
  </#list>
  </tr>
</#list>
</table>
<br/>
