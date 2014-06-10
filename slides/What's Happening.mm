<map version="freeplane 1.2.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="What&apos;s Happening" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1399412874356"><hook NAME="MapStyle">

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node">
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right">
<stylenode LOCALIZED_TEXT="default" MAX_WIDTH="600" COLOR="#000000" STYLE="as_parent">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.note"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="5"/>
<node TEXT="El porque de esta charla" POSITION="right" ID="ID_924422532" CREATED="1399413806130" MODIFIED="1402406885778">
<edge COLOR="#0000ff"/>
<node TEXT="@accreativos" ID="ID_1866923962" CREATED="1399413817398" MODIFIED="1399413821095"/>
<node TEXT="@madridgug" ID="ID_1278479217" CREATED="1399413753810" MODIFIED="1402406818667"/>
<node TEXT="La increible ayuda de @marioggar" ID="ID_123976478" CREATED="1402350882848" MODIFIED="1402351071196"/>
<node TEXT="https://github.com/josejuanmontiel/whatshappening" ID="ID_1814924623" CREATED="1399413890111" MODIFIED="1399413890111" LINK="https://github.com/josejuanmontiel/whatshappening"/>
<node ID="ID_872777713" CREATED="1402406944788" MODIFIED="1402414166304"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      El nivel de las ultimas charlas en @madridgug ha ido aumentando en los ultimos meses (eso o yo cada vez le saco mas partido) y en la <a href="https://www.youtube.com/watch?v=vTxdTkZtWMg">ultima</a>&#160; @mgdelacroix, tengo que decir que me inspiro bastante, por el estilo y por lo que conto.<br/>Asi que aunque profesionalmente no me dedico al mundo Groovy, me propuse preparar una charla... que por lo menos me sirviera para investigar.<br/>La de Ratpack ya estaba cogida, asi que tras unas consultas al <a href="https://groups.google.com/forum/#!topic/madrid-gug/vu8YMZz3UMY">grupo de usuarios</a>, me decidi por Dropwizard.<br/>Despues de mucho mirar y hablarlo con @marioggar, si que se habia hablado de Dropwizard en los circulos de Groovy, asi que me perdonen los puristas, pero a falta de otra... intentare empezar con java, para con algo de groovy simplificar el desarrollo con este framework. Y poder quitarnos java y maven, para usar
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="Necesidad" POSITION="right" ID="ID_96460674" CREATED="1399413828187" MODIFIED="1402351578833">
<edge COLOR="#00ff00"/>
<node TEXT="WhatsHappening" ID="ID_1475508722" CREATED="1399413854060" MODIFIED="1399413859510">
<node TEXT="Quieres saber como de rapido viaja la ultima broma por whatsapp? la derrota del Barca en por el Atletico, Aguirre a la carrera, el Real Madrid gana en el descuento, el rey abdica... Estaria genial una aplicacacion para ver el &quot;trending topic&quot; de whatsapp. Has recibido una imagen graciosa, compartela con la aplicacion &quot;whatshappening&quot; y sabras si has sido el primero en recibirla o el un millon :D" ID="ID_1473556229" CREATED="1399413903764" MODIFIED="1402351956796"/>
</node>
</node>
<node TEXT="Solucion" POSITION="right" ID="ID_1376484677" CREATED="1399414082864" MODIFIED="1399414087781">
<edge COLOR="#ff00ff"/>
<node TEXT="Vamos a desarrollar una solucion iterativa, donde primero usaremos dropwizar de la manera tradicional que sus creadores recomiendan, con java, maven y todo el pack. Despues veremos como ya hay &quot;templates&quot; para maven que montan la estructura basica, y luego como tambien tenemos templates para lazybones, esto nos dara pie a Groovy. Despues, gracias al aporte de @marioggar veremos como construir un DSL mediante transformaciones AST para que usando una anotacion simplifiquemos los elementos necesarios para tener un resource. Por ultimo, como bola extra, mostrare un cliente Android de este microservicio." ID="ID_1837194200" CREATED="1402405003641" MODIFIED="1402406624195"/>
<node TEXT="Dropwizard" ID="ID_710779118" CREATED="1399414099350" MODIFIED="1401368588790">
<node TEXT="Pasos para el desarrollo" ID="ID_812672641" CREATED="1401368652569" MODIFIED="1401368660502">
<node TEXT="Seguir lo indicado en:" ID="ID_766647821" CREATED="1401368661257" MODIFIED="1401368668191">
<node ID="ID_479157407" CREATED="1401368672581" MODIFIED="1401368672581" LINK="https://dropwizard.github.io/dropwizard/getting-started.html"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      https://dropwizard.github.io/dropwizard/getting-started.html
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Modelo de clases de ejemplo" ID="ID_1983584466" CREATED="1401368675993" MODIFIED="1401368681382">
<node TEXT="" ID="ID_1450826167" CREATED="1401368682257" MODIFIED="1401368692460">
<hook URI="WhatsHappeningModel.png" SIZE="0.57636887" NAME="ExternalObject"/>
</node>
</node>
</node>
</node>
<node TEXT="Lazybones" ID="ID_1080509491" CREATED="1399418543129" MODIFIED="1399418547858">
<node TEXT="Templates (mvn archetypes)" ID="ID_1366284119" CREATED="1399418549889" MODIFIED="1399418560021">
<node TEXT="lazybones create dropwizard 0.2 whatshappening" ID="ID_1543319919" CREATED="1399418872961" MODIFIED="1399418872961"/>
</node>
</node>
<node TEXT="Groovy" ID="ID_587897482" CREATED="1399414107526" MODIFIED="1399414168755">
<node TEXT="DSL" ID="ID_936806254" CREATED="1399414171063" MODIFIED="1399414173345">
<node TEXT="Primera cosa a DSLizar" ID="ID_964864542" CREATED="1401368719392" MODIFIED="1401368736525">
<node TEXT="- XXXApplication.run&#xa;final XXXResource resource = new XXXResource(param1, param2);&#xa;    environment.jersey().register(resource);&#xa;&#xa;    final XXXHealthCheck healthCheck = new XXXHealthCheck(param1);&#xa;    environment.healthChecks().register(&quot;template&quot;, healthCheck);" ID="ID_1648690502" CREATED="1401368737112" MODIFIED="1401368738814"/>
<node TEXT="enviroment {&#xa;jersey {&#xa;XXXResource {&#xa;param1,&#xa;param2&#xa;}&#xa;}&#xa;healthChecks {&#xa;XXXHealthCheck {&#xa;param1&#xa;}&#xa;}&#xa;}" ID="ID_1804378412" CREATED="1401368748216" MODIFIED="1401368750366"/>
</node>
<node TEXT="La configuracion que se coja directamente del fichero" ID="ID_1587663464" CREATED="1401368755048" MODIFIED="1401368763597">
<node TEXT="config.yml y no sea necesario ... XXXApplication.run(XXXConfiguration)" ID="ID_825814261" CREATED="1401368772128" MODIFIED="1401368796757"/>
</node>
<node TEXT="Modelizar los rest (XXXResource) del estilo a ratpack" ID="ID_847041044" CREATED="1401368799224" MODIFIED="1401368832748"/>
<node TEXT="https://github.com/mariogarcia/groovy-wizard" ID="ID_409695375" CREATED="1402352001217" MODIFIED="1402352001217" LINK="https://github.com/mariogarcia/groovy-wizard"/>
</node>
</node>
<node TEXT="Cliente Android" ID="ID_898401756" CREATED="1402351176195" MODIFIED="1402351179043">
<node TEXT="https://code.google.com/p/maven-android-plugin/wiki/GettingStarted" ID="ID_1031739983" CREATED="1402395090818" MODIFIED="1402395090818" LINK="https://code.google.com/p/maven-android-plugin/wiki/GettingStarted"/>
</node>
</node>
<node TEXT="Para esta presentacion" POSITION="right" ID="ID_557388051" CREATED="1399414213375" MODIFIED="1399414220503">
<edge COLOR="#00ffff"/>
<node TEXT="http://berteh.github.io/mindslide/" ID="ID_1763940128" CREATED="1399414289174" MODIFIED="1399414289174" LINK="http://berteh.github.io/mindslide/"/>
<node TEXT="Links" ID="ID_455134164" CREATED="1399418226541" MODIFIED="1399418228565">
<node TEXT="DSL" ID="ID_271398696" CREATED="1399418289589" MODIFIED="1399418291602">
<node TEXT="http://groovy.codehaus.org/Writing+Domain-Specific+Languages" ID="ID_1291645919" CREATED="1401357661076" MODIFIED="1401357661076" LINK="http://groovy.codehaus.org/Writing+Domain-Specific+Languages"/>
<node TEXT="Laforge" ID="ID_237005200" CREATED="1401368550265" MODIFIED="1401368559742">
<node TEXT="http://www.slideshare.net/glaforge/going-to-mars-with-groovy-domainspecific-languages" ID="ID_206664595" CREATED="1399418282734" MODIFIED="1399418282734" LINK="http://www.slideshare.net/glaforge/going-to-mars-with-groovy-domainspecific-languages"/>
<node TEXT="http://groovy.codeplex.com/wikipage?title=Guillaume%20Laforge%27s%20%22Mars%20Rover%22%20tutorial%20on%20Groovy%20DSL%27s" ID="ID_1220513687" CREATED="1399418236600" MODIFIED="1399418236600" LINK="http://groovy.codeplex.com/wikipage?title=Guillaume%20Laforge%27s%20%22Mars%20Rover%22%20tutorial%20on%20Groovy%20DSL%27s"/>
</node>
<node ID="ID_1054522768" CREATED="1401368672581" MODIFIED="1401368672581" LINK="https://dropwizard.github.io/dropwizard/getting-started.html"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      https://dropwizard.github.io/dropwizard/getting-started.html
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="http://www.amazon.com/Groovy-Domain-Specific-Languages-Fergal-Dearle/dp/184719690X" ID="ID_811869494" CREATED="1402395044879" MODIFIED="1402395044879" LINK="http://www.amazon.com/Groovy-Domain-Specific-Languages-Fergal-Dearle/dp/184719690X"/>
</node>
<node TEXT="DropWizard" ID="ID_364115565" CREATED="1399418316409" MODIFIED="1399418320775">
<node TEXT="https://dropwizard.github.io/dropwizard/getting-started.html" ID="ID_614949232" CREATED="1399418321594" MODIFIED="1399418321594" LINK="https://dropwizard.github.io/dropwizard/getting-started.html"/>
<node TEXT="Example" ID="ID_735149264" CREATED="1399418442546" MODIFIED="1399418444877">
<node TEXT="https://github.com/dropwizard/dropwizard/tree/master/dropwizard-example" ID="ID_1877420616" CREATED="1399418445477" MODIFIED="1399418445477" LINK="https://github.com/dropwizard/dropwizard/tree/master/dropwizard-example"/>
</node>
</node>
</node>
</node>
</node>
</map>
