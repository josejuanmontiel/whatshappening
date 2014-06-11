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
<node ID="ID_872777713" CREATED="1402406944788" MODIFIED="1402478714788"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      El nivel de las ultimas charlas en @madridgug ha ido aumentando en los ultimos meses (eso o yo cada vez le saco mas partido) y en la <a href="https://www.youtube.com/watch?v=vTxdTkZtWMg">penultima</a>&#160; tengo que decir que @mgdelacroix me inspiro bastante, por el estilo y por lo que conto. Asi que aunque profesionalmente no me dedico al mundo Groovy, me propuse preparar una charla... que por lo menos me sirviera para investigar.<br/>La de Ratpack ya estaba cogida, asi que tras unas consultas al <a href="https://groups.google.com/forum/#!topic/madrid-gug/vu8YMZz3UMY">grupo de usuarios @madridgug</a>, me decidi por intentarlo con Dropwizard y despues de mucho mirar y comentarlo @marioggar antes de su <a href="http://www.meetup.com/madrid-gug/events/181236742/">workshop</a>, si que se habia hablado de Dropwizard en los circulos de Groovy, aunque no es un framework groovy. Pero bueno, eso no iba a detener, jeje, asi que la idea era intentar enforcarlo al DSL... me perdonen ;) si no hay mucho groovy, pero estoy empezando...<br/>El enfoque es el siguiente: ver que ofrece dropwizar (con maven, java y todo esas cosas que tanto gustan ;) para ver como poder simplificar el desarrollo con groovy y anotaciones...Espero que les guste ;)
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="&#xbf;Empezamos?" ID="ID_1404292888" CREATED="1402478134124" MODIFIED="1402478280013">
<node TEXT="Soy @accreativos, programador java (con ganas de groovy), marido y padre de 2 ni&#xf1;as (siempre quise decir eso)" ID="ID_1866923962" CREATED="1399413817398" MODIFIED="1402478301239"/>
<node TEXT="Agradecir la ayuda de @marioggar para preparar esto" ID="ID_123976478" CREATED="1402350882848" MODIFIED="1402478216118"/>
<node TEXT="Y el codigo de todo lo que voy a contar: https://github.com/josejuanmontiel/whatshappening" ID="ID_1390037432" CREATED="1402478252849" MODIFIED="1402478253998"/>
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
<node TEXT="We recommend you use Maven for new Dropwizard applications. If you&#x2019;re a big Ant / Ivy, Buildr, Gradle, SBT, Leiningen, or Gant fan, that&#x2019;s cool, but we use Maven and we&#x2019;ll be using Maven as we go through this example application. If you have any questions..." ID="ID_812672641" CREATED="1401368652569" MODIFIED="1402480023382"/>
<node TEXT="https://dropwizard.github.io/dropwizard/getting-started.html" ID="ID_479157407" CREATED="1401368672581" MODIFIED="1402479339373" LINK="https://dropwizard.github.io/dropwizard/getting-started.html"/>
<node TEXT="Pasos" ID="ID_1875783503" CREATED="1402480046295" MODIFIED="1402480048012">
<node TEXT="Voy a ir resumiendo un poco lo que dice la documentacion, para que se vea que maven tampoco es tan malo :D Notar que con spring-boot echas a andar antes, y por supuesto con RatPack mucho antes todavia... pero bueno, esta charla va de Dropwizard :(" ID="ID_1730891199" CREATED="1402480446837" MODIFIED="1402480560019"/>
<node TEXT="Crear el arquetipo del proyecto con maven" ID="ID_469700088" CREATED="1402480049711" MODIFIED="1402480067387">
<node ID="ID_398978338" CREATED="1402480071471" MODIFIED="1402480686220"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>mvn archetype:generate \
		-DgroupId=com.accreativos.whatshappening \
		-DartifactId=core -DarchetypeArtifactId=maven-archetype-quickstart \
		-DinteractiveMode=false</pre>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Y ahora a&#xf1;adimos la dependencia en el pom.xml principal" ID="ID_662472615" CREATED="1402481979005" MODIFIED="1402481992402"/>
<node ID="ID_1358378448" CREATED="1402480949602" MODIFIED="1402481954230"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>&lt;properties&gt;
	&lt;dropwizard.version&gt;0.7.0&lt;/dropwizard.version&gt;
&lt;/properties&gt;

&lt;dependencies&gt;
	&lt;dependency&gt;
		&lt;groupId&gt;io.dropwizard&lt;/groupId&gt;
		&lt;artifactId&gt;dropwizard-core&lt;/artifactId&gt;
		&lt;version&gt;${dropwizard.version}&lt;/version&gt;
	&lt;/dependency&gt;
&lt;/dependencies&gt;</pre>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="Crear clase de configuracion" ID="ID_394612095" CREATED="1402480121110" MODIFIED="1402480125371">
<node TEXT="La clase de configuracion sera la encargada de leer sus valores de un fichero que machea con las atributos y de emponerlo al resto de la aplicacion" ID="ID_1388382828" CREATED="1402480126814" MODIFIED="1402482354864"/>
<node ID="ID_1202984743" CREATED="1402482356002" MODIFIED="1402482368841"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>package com.accreativos.whatshappening;

import com.fasterxml.jackson.annotation.JsonProperty;
import io.dropwizard.Configuration;
import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;

public class WhatsHappeningConfiguration extends Configuration {
    @NotEmpty
    private String template;

    @NotEmpty
    private String defaultName = &quot;Stranger&quot;;

    @JsonProperty
    public String getTemplate() {
        return template;
    }

    @JsonProperty
    public void setTemplate(String template) {
        this.template = template;
    }

    @JsonProperty
    public String getDefaultName() {
        return defaultName;
    }

    @JsonProperty
    public void setDefaultName(String defaultName) {
        this.defaultName = defaultName;
    }

}</pre>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="Crear fichero de configuracion para la clase de configuracion" ID="ID_1689424406" CREATED="1402482375682" MODIFIED="1402482386751">
<node TEXT="En la raiz del proyecto creamos un core.yml" ID="ID_1144661400" CREATED="1402482419458" MODIFIED="1402482437863"/>
<node TEXT="Se le pueden poner mas configuraciones (logs, puertos servidor) que seran leidas por otras partes del framwork" ID="ID_398578845" CREATED="1402482439594" MODIFIED="1402482467334"/>
<node ID="ID_915653910" CREATED="1402482468474" MODIFIED="1402482796654"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>template: Hello, %s!
defaultName: Stranger

# use the simple server factory if you only want to run on a single port
server:
# softNofileLimit: 1000
# hardNofileLimit: 1000
  applicationConnectors:
    - type: http
      port: 8080

# Logging settings.
logging:
  # The default level of all loggers. Can be OFF, ERROR, WARN, INFO, DEBUG, TRACE, or ALL.
  level: INFO
  # Logger-specific levels.
  loggers:
    # Sets the level for 'com.example.app' to DEBUG.
    com.example.app: DEBUG
    org.hibernate.SQL: ALL
  appenders:
    - type: console</pre>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="Crear clase de aplicacion" ID="ID_834271980" CREATED="1402480156014" MODIFIED="1402480161315">
<node TEXT="Esta clase sera la que tenga el &quot;main&quot; que al estilo de spring-boot realiza la &quot;magia&quot; de ser el punto de arranque del todo el conjunto: aplicacion + servidor" ID="ID_937270255" CREATED="1402480161966" MODIFIED="1402483056235"/>
<node ID="ID_1519089357" CREATED="1402483057062" MODIFIED="1402483109602"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>package com.accreativos.whatshappening;

import io.dropwizard.Application;
import io.dropwizard.setup.Bootstrap;
import io.dropwizard.setup.Environment;
import com.accreativos.whatshappening.resources.*;
import com.accreativos.whatshappening.health.TemplateHealthCheck;

public class WhatsHappeningApplication extends Application<whatshappeningconfiguration/> {

    public static void main(String[] args) throws Exception {
        new WhatsHappeningApplication().run(args);
    }

    @Override
    public String getName() {
        return &quot;WhatsHappening&quot;;
    }

    @Override
    public void initialize(Bootstrap<whatshappeningconfiguration/> bootstrap) {
        // nothing to do yet
    }

    @Override
    public void run(WhatsHappeningConfiguration configuration, Environment environment) {
	// Aqui seguiremos luego...
    }
}</pre>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="Crear una clase de representacion" ID="ID_211256902" CREATED="1402483248301" MODIFIED="1402483253370">
<node TEXT="Para este ejemplo vamos a crear un servicio rest que reciba un upload de una imagen, mas adelante, montaremos una API rest que expondra ciertas funciones para listar y catalogar el contenido... que sera explotada por la aplicacion cliente android o una aplicacion web con javascript, por tanto pasamos directamente a la clase de recurso." ID="ID_434278081" CREATED="1402483270181" MODIFIED="1402485015809"/>
</node>
<node TEXT="Crear una clase de recurso" ID="ID_460234508" CREATED="1402484979877" MODIFIED="1402484986648">
<node TEXT="Para eso necesitamos una depencia nueva" ID="ID_1749608096" CREATED="1402484037809" MODIFIED="1402484046998">
<node ID="ID_1798516718" CREATED="1402484048161" MODIFIED="1402484173510"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>&lt;dependency&gt;
	&lt;groupId&gt;com.sun.jersey.contribs&lt;/groupId&gt;
	&lt;artifactId&gt;jersey-multipart&lt;/artifactId&gt;
	&lt;version&gt;1.18.1&lt;/version&gt;
&lt;/dependency&gt;</pre>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="La clase quedaria asi..." ID="ID_696369022" CREATED="1402484179512" MODIFIED="1402484186437">
<node ID="ID_194063393" CREATED="1402484234680" MODIFIED="1402484888186"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>package com.accreativos.whatshappening.resources;

import static javax.ws.rs.core.MediaType.*;
import java.io.*;
import java.nio.*;
import java.nio.channels.*;
import java.util.*;
import javax.ws.rs.*;
import javax.ws.rs.core.*;
import com.sun.jersey.core.header.*;
import com.sun.jersey.multipart.*;

@Path(&quot;/image&quot;)
@Produces(MediaType.APPLICATION_JSON)
public class WhatsHappeningFileResource {
	public static final String UPLOAD_DIR = &quot;/tmp&quot;;
	public WhatsHappeningFileResource() {}

	@POST
	@Path(&quot;/attached&quot;)
	@Produces(TEXT_PLAIN)
	@Consumes(MULTIPART_FORM_DATA)
	public String uploadFile(@FormDataParam(&quot;image&quot;) final InputStream stream,
			@FormDataParam(&quot;image&quot;) FormDataContentDisposition fileDetail)
			throws Exception {
            String tempname = UUID.randomUUID().toString();
	    final String outputPath = UPLOAD_DIR + File.separator + tempname;
	    copyCompletely(stream, new FileOutputStream(outputPath));
	    return tempname;
	}


	public static void copyCompletely(InputStream input, OutputStream output) throws IOException { 
            ...
	}
}</pre>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="Ahora hay que registrar el recurso" ID="ID_1192262108" CREATED="1402485047347" MODIFIED="1402485054136">
<node TEXT="Asi que volvemos a la clase de aplicacion para registar el nuevo recurso que hemos creado" ID="ID_446242452" CREATED="1402485136883" MODIFIED="1402485158039"/>
<node ID="ID_159816234" CREATED="1402485158898" MODIFIED="1402485223124"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>package com.accreativos.whatshappening;

import io.dropwizard.*;
import io.dropwizard.setup.*;
import com.accreativos.whatshappening.resources.*;

public class WhatsHappeningApplication extends Application&lt;WhatsHappeningConfiguration&gt; {

	...

    @Override
    public void run(WhatsHappeningConfiguration configuration, Environment environment) {
		final WhatsHappeningFileResource resourceFile = new WhatsHappeningFileResource();
	    environment.jersey().register(resourceFile);
    }
}</pre>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="Creating A Health Check" ID="ID_1868140464" CREATED="1402485307330" MODIFIED="1402485308854">
<node TEXT="// TODO" ID="ID_1171666752" CREATED="1402485309474" MODIFIED="1402485317430"/>
</node>
<node TEXT="Fat Jar?" ID="ID_1359959427" CREATED="1402485323857" MODIFIED="1402485516741">
<node TEXT="Hemos visto que la aplicacion tiene un main, entonces se puede ejecutar con java className &#xbf;pero que pasa con las dependencias y demas clases auxiliares?" ID="ID_691070375" CREATED="1402485523352" MODIFIED="1402485660061"/>
<node TEXT="Fat jar al rescate, con un plugin de manen (si estabamos con maven ;) podremos construir un unico jar que contenga toda la aplicacion y sus dependencias." ID="ID_168657885" CREATED="1402485663353" MODIFIED="1402485663353"/>
<node TEXT="A&#xf1;adimos a nuestro pom.xml" ID="ID_1632773197" CREATED="1402487661364" MODIFIED="1402487667184">
<node ID="ID_1183717383" CREATED="1402487742451" MODIFIED="1402487915899"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre style="font-size: 14px">&lt;build&gt;
	&lt;plugins&gt;
		&lt;plugin&gt;
			&lt;groupId&gt;org.apache.maven.plugins&lt;/groupId&gt;
			&lt;artifactId&gt;maven-shade-plugin&lt;/artifactId&gt;
			&lt;version&gt;1.6&lt;/version&gt;
			&lt;configuration&gt;
				&lt;createDependencyReducedPom&gt;true&lt;/createDependencyReducedPom&gt;
				&lt;filters&gt;
					&lt;filter&gt;
						&lt;artifact&gt;*:*&lt;/artifact&gt;
						&lt;excludes&gt;
							&lt;exclude&gt;META-INF/*.SF&lt;/exclude&gt;
							&lt;exclude&gt;META-INF/*.DSA&lt;/exclude&gt;
							&lt;exclude&gt;META-INF/*.RSA&lt;/exclude&gt;
						&lt;/excludes&gt;
					&lt;/filter&gt;
					&lt;/filters&gt;
			&lt;/configuration&gt;
			&lt;executions&gt;
				&lt;execution&gt;
					&lt;phase&gt;package&lt;/phase&gt;
						&lt;goals&gt;
							&lt;goal&gt;shade&lt;/goal&gt;
						&lt;/goals&gt;
						&lt;configuration&gt;
							&lt;transformers&gt;
								&lt;transformer implementation=&quot;org.apache.maven.plugins.shade.resource.ServicesResourceTransformer&quot;/&gt;
								&lt;transformer implementation=&quot;org.apache.maven.plugins.shade.resource.ManifestResourceTransformer&quot;&gt;
									&lt;mainClass&gt;com.accreativos.whatshappening.WhatsHappeningApplication&lt;/mainClass&gt;
								&lt;/transformer&gt;
							&lt;/transformers&gt;
						&lt;/configuration&gt;
				&lt;/execution&gt;
			&lt;/executions&gt;
		&lt;/plugin&gt;
		&lt;plugin&gt;
			&lt;groupId&gt;org.apache.maven.plugins&lt;/groupId&gt;
			&lt;artifactId&gt;maven-jar-plugin&lt;/artifactId&gt;
			&lt;version&gt;2.4&lt;/version&gt;
			&lt;configuration&gt;
				&lt;archive&gt;
					&lt;manifest&gt;
						&lt;addDefaultImplementationEntries&gt;true&lt;/addDefaultImplementationEntries&gt;
					&lt;/manifest&gt;
				&lt;/archive&gt;
			&lt;/configuration&gt;
		&lt;/plugin&gt;
	&lt;/plugins&gt;
&lt;/build&gt;</pre>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
<node TEXT="Ejecutar la aplicacion" ID="ID_834813962" CREATED="1402487959370" MODIFIED="1402487964079">
<node TEXT="Ahora que ya podemos generar fat jars..." ID="ID_908238033" CREATED="1402487964994" MODIFIED="1402488008966"/>
<node TEXT="mvn package" ID="ID_430799783" CREATED="1402488014738" MODIFIED="1402488018630"/>
<node TEXT="Y para ejecutar: java -jar target/core-1.0-SNAPSHOT.jar server core.yml donde core.yml es el fichero de configuracion" ID="ID_1631711518" CREATED="1402488167233" MODIFIED="1402488227397"/>
</node>
</node>
<node TEXT="Modelo de clases de ejemplo" ID="ID_1983584466" CREATED="1401368675993" MODIFIED="1401368681382">
<node TEXT="" ID="ID_1450826167" CREATED="1401368682257" MODIFIED="1401368692460">
<hook URI="WhatsHappeningModel.png" SIZE="0.57636887" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="Proximos pasos" ID="ID_128650939" CREATED="1402483305413" MODIFIED="1402483308482">
<node TEXT="Acceso a bbdd para guardar las referencias y datos de las imagenes subidas..." ID="ID_572334306" CREATED="1402483320224" MODIFIED="1402483334538"/>
<node TEXT="Presentacion de listados &quot;trending whatsapp&quot;" ID="ID_1296342925" CREATED="1402483320224" MODIFIED="1402483380337"/>
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
