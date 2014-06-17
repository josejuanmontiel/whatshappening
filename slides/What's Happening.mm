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
<hook NAME="AutomaticEdgeColor" COUNTER="6"/>
<node TEXT="&#xbf;De que va esta charla?" POSITION="right" ID="ID_924422532" CREATED="1399413806130" MODIFIED="1402828770578">
<edge COLOR="#0000ff"/>
<node TEXT="Intro..." ID="ID_1073758459" CREATED="1402828446024" MODIFIED="1402828753708">
<node TEXT="Cuando" ID="ID_1334654494" CREATED="1402828625117" MODIFIED="1402828716330">
<node ID="ID_872777713" CREATED="1402406944788" MODIFIED="1402949843022"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      El nivel de las charlas en @madridgug ha ido aumentando en los ultimos meses (eso o yo cada vez le saco mas partido) y en la <a href="https://www.youtube.com/watch?v=vTxdTkZtWMg">penultima</a>&#160; tengo que decir que @mgdelacroix me inspiro bastante, por el estilo y por lo que conto. Asi que aunque profesionalmente no me dedico al mundo Groovy, me propuse preparar una charla... que por lo menos me sirviera para investigar.
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="Porqu&#xe9;" ID="ID_338691539" CREATED="1402828634396" MODIFIED="1402828732486">
<node ID="ID_208075759" CREATED="1402828309007" MODIFIED="1402949966149"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      La de Ratpack habria estado genial pero... tras unas consultas al <a href="https://groups.google.com/forum/#!topic/madrid-gug/vu8YMZz3UMY">grupo de usuarios @madridgug</a>, me decidi por intentarlo con Dropwizard y despues de mucho mirar y comentarlo @marioggar antes de su <a href="http://www.meetup.com/madrid-gug/events/181236742/">workshop</a>, si que se habia hablado de Dropwizard en los circulos de Groovy aunque no es un framework groovy. Pero bueno, eso no me iba a detener, asi que la idea era intentar enforcarlo al DSL...
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="Como" ID="ID_493698158" CREATED="1402828641877" MODIFIED="1402828734908">
<node TEXT="Pues la receta de la charla es la siguiente. Ingredientes: 33% de java, 33% de groovy, 33% de android, y puede contener trazas de Maven, asi que ojo a los alergicos. Presentacion: en bandeja y frio. Espero que les guste ;)" ID="ID_497909178" CREATED="1402828318499" MODIFIED="1402950140540"/>
</node>
</node>
<node TEXT="&#xbf;Adelante?" ID="ID_1404292888" CREATED="1402478134124" MODIFIED="1402828440516">
<node TEXT="Soy Jose Juan Montiel (@accreativos), programador java (con ganas de groovy), marido y padre de 2 ni&#xf1;as" ID="ID_1866923962" CREATED="1399413817398" MODIFIED="1402950190738"/>
<node TEXT="Agradecer la ayuda de @marioggar la parte groovy" ID="ID_123976478" CREATED="1402350882848" MODIFIED="1402950261242"/>
<node TEXT="Y el codigo de todo lo que voy a contar: https://github.com/josejuanmontiel/whatshappening" ID="ID_1390037432" CREATED="1402478252849" MODIFIED="1402478253998"/>
</node>
</node>
<node TEXT="Necesidad" POSITION="right" ID="ID_96460674" CREATED="1399413828187" MODIFIED="1402351578833">
<edge COLOR="#00ff00"/>
<node TEXT="WhatsHappening" ID="ID_1475508722" CREATED="1399413854060" MODIFIED="1399413859510">
<node TEXT="Quieres saber como de rapido viaja la ultima broma por whatsapp? Cual es el meme de moda? Aguirre a la carrera, el Real Madrid gana en el descuento, el rey abdica, espa&#xf1;a pierde con holanda... Estaria genial una aplicacacion para ver el &quot;trending topic&quot; de whatsapp. Has recibido una imagen graciosa, compartela con la aplicacion &quot;whatshappening&quot; y sabras si has sido el primero en recibirla o el un millon :D Acediendo a la web podras ver el historial de noticias, en base a los memes, como viajan, por donde se mueven (hora y lugar) sobre un mapa y cuanto duran algunos que son mas atemporales... una prueba de concepto a implementar." ID="ID_1473556229" CREATED="1399413903764" MODIFIED="1402950324737"/>
</node>
</node>
<node TEXT="Solucion" POSITION="right" ID="ID_1376484677" CREATED="1399414082864" MODIFIED="1399414087781">
<edge COLOR="#ff00ff"/>
<node TEXT="Vamos a desarrollar una solucion iterativa, donde primero usaremos dropwizar de la manera tradicional que sus creadores recomiendan, con java, maven y todo el pack. Despues veremos como tenemos templates para lazybones, esto nos dara pie a Groovy. Gracias al aporte de @marioggar veremos como construir un DSL mediante transformaciones AST para que usando una anotacion simplifiquemos los elementos necesarios para tener un resource. Por ultimo, como bola extra, mostrare un cliente Android de este microservicio." ID="ID_1837194200" CREATED="1402405003641" MODIFIED="1402950464806"/>
<node TEXT="Dropwizard" ID="ID_710779118" CREATED="1399414099350" MODIFIED="1401368588790">
<node TEXT="We recommend you use Maven for new Dropwizard applications. If you&#x2019;re a big Ant / Ivy, Buildr, Gradle, SBT, Leiningen, or Gant fan, that&#x2019;s cool, but we use Maven and we&#x2019;ll be using Maven as we go through this example application. If you have any questions..." ID="ID_812672641" CREATED="1401368652569" MODIFIED="1402480023382"/>
<node TEXT="https://dropwizard.github.io/dropwizard/getting-started.html" ID="ID_479157407" CREATED="1401368672581" MODIFIED="1402479339373" LINK="https://dropwizard.github.io/dropwizard/getting-started.html"/>
<node TEXT="Pasos" ID="ID_1875783503" CREATED="1402480046295" MODIFIED="1402480048012">
<node TEXT="Voy a ir resumiendo un poco lo que dice la documentacion, para que se vea que maven tampoco es tan malo :D Notar que con spring-boot echas a andar antes, y por supuesto con RatPack mucho antes todavia... pero bueno, esta charla va de Dropwizard :(" ID="ID_1730891199" CREATED="1402480446837" MODIFIED="1402480560019"/>
<node TEXT="Primer bloque" ID="ID_1301055060" CREATED="1402829727851" MODIFIED="1402829740219">
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
<node ID="ID_1202984743" CREATED="1402482356002" MODIFIED="1402829958378"><richcontent TYPE="NODE">

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
    public String getTemplate() { return template; }

    @JsonProperty
    public void setTemplate(String template) {  this.template = template;}

    @JsonProperty
    public String getDefaultName() { return defaultName; }

    @JsonProperty
    public void setDefaultName(String defaultName) { this.defaultName = defaultName; }

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
<node ID="ID_1519089357" CREATED="1402483057062" MODIFIED="1402830180961"><richcontent TYPE="NODE">

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
    }
    @Override
    public void run(WhatsHappeningConfiguration configuration, Environment environment) {
    }
}</pre>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="Crear una clase de representacion" ID="ID_211256902" CREATED="1402483248301" MODIFIED="1402483253370">
<node TEXT="Para este ejemplo vamos a crear un servicio rest que reciba un upload de una imagen, mas adelante, montaremos una API rest que expondra ciertas funciones para listar y catalogar el contenido... que sera explotada por la aplicacion cliente android o una aplicacion web con javascript, incluso porque no una aplicacion grails que sirva para administrar y catalogar el contenido, subir plugins de reconocimiento de imagenes, feeds de noticias para ver con que eventos coincen... pero bueno, pasamos directamente a la clase de recurso." ID="ID_434278081" CREATED="1402483270181" MODIFIED="1402829520353"/>
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
<node ID="ID_194063393" CREATED="1402484234680" MODIFIED="1402830295331"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>package com.accreativos.whatshappening.resources;

import static javax.ws.rs.core.MediaType.*;
...
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
			@FormDataParam(&quot;image&quot;) FormDataContentDisposition fileDetail) throws Exception {
	    final String outputPath = UPLOAD_DIR + File.separator + UUID.randomUUID().toString();
	    copyCompletely(stream, new FileOutputStream(outputPath));
	    return tempname;
	}

	public static void copyCompletely(InputStream input, OutputStream output) throws IOException {	}
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
</node>
<node TEXT="Segundo bloque" ID="ID_1775614897" CREATED="1402829742972" MODIFIED="1402829746465">
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
<node TEXT="Ya podemos probarlo" ID="ID_503398811" CREATED="1402488452327" MODIFIED="1402488458796">
<node ID="ID_477247219" CREATED="1402488459927" MODIFIED="1402488483554"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>&lt;form action=&quot;http://localhost:8080/image/attached&quot; method=&quot;post&quot; enctype=&quot;multipart/form-data&quot;&gt;
&lt;label for=&quot;image&quot;&gt;Filename:&lt;/label&gt;
&lt;input type=&quot;file&quot; name=&quot;image&quot; id=&quot;image&quot; /&gt;
&lt;br /&gt;
&lt;input type=&quot;submit&quot; name=&quot;submit&quot; value=&quot;upload&quot; /&gt;
&lt;/form&gt;</pre>
  </body>
</html>
</richcontent>
</node>
</node>
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
<node TEXT="https://github.com/mariogarcia/groovy-wizard" ID="ID_409695375" CREATED="1402352001217" MODIFIED="1402352001217" LINK="https://github.com/mariogarcia/groovy-wizard"/>
<node TEXT="Yo mismo envie el primero pull request para a&#xf1;adir la opcion de insertar healthchecker en la aplicacion, os animo a ir haciendo crecer esta prueba de concepto, que no se diga que no nos gusta picar codigo :)" ID="ID_1145275297" CREATED="1402829223641" MODIFIED="1402829285728"/>
<node TEXT="Intentare explicarlo lo mejor posible" ID="ID_223584038" CREATED="1402831196735" MODIFIED="1402831203963">
<node TEXT="Vision general de los elementos implicados" ID="ID_703325288" CREATED="1402831182192" MODIFIED="1402831192616">
<node TEXT="Un imagen vale mas que mil palabras" ID="ID_1393599831" CREATED="1402831221789" MODIFIED="1402831231136">
<node TEXT="" ID="ID_640007297" CREATED="1402831282289" MODIFIED="1402831297830">
<hook URI="groovy-wizard-core.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
<node TEXT="" ID="ID_1432975523" CREATED="1402831284469" MODIFIED="1402831291681">
<hook URI="groovy-wizard-example.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
</node>
</node>
<node TEXT="Core" ID="ID_1696702428" CREATED="1402831316675" MODIFIED="1402831318141">
<node TEXT="En este modulo se definen los elementos que haran comun, para cada una de las aplicaciones que implementemos, junto con la definicion de las anotaciones que haran la magia de la transformacion AST" ID="ID_1395926613" CREATED="1402831819753" MODIFIED="1402831881569"/>
<node TEXT="GroovyWizardApplication.groovy" ID="ID_141173844" CREATED="1402831432859" MODIFIED="1402831432859">
<node TEXT="Esta clase genera la clase &quot;application&quot; que centraliza todo en Dropwizard" ID="ID_1523806084" CREATED="1402832664865" MODIFIED="1402832692733"/>
<node TEXT="Extendemos y usamos compileStatic" ID="ID_1457829049" CREATED="1402832696690" MODIFIED="1402832708356">
<node ID="ID_60736370" CREATED="1402832541265" MODIFIED="1402832626605"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>@CompileStatic
class GroovyWizardApplication extends Application<groovywizardconfiguration/> {</pre>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Main y paso de argumentos" ID="ID_418935434" CREATED="1402832725982" MODIFIED="1402832777666">
<node ID="ID_520296253" CREATED="1402832626610" MODIFIED="1402832635443"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>static void main(String[] args) {
        new GroovyWizardApplication().run(['server'] as String[])
    }</pre>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Inicializamos la clase de aplicacion con los elementos necesarios: resources, healthcheckers.." ID="ID_102488727" CREATED="1402832785129" MODIFIED="1402832817780">
<node ID="ID_1469848060" CREATED="1402832635447" MODIFIED="1402832641682"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>void initialize(Bootstrap<groovywizardconfiguration/> bootstrap) { }
    void run(GroovyWizardConfiguration configuration, Environment environment) {
        loadResources(configuration, environment).each { resource -&gt;
           environment.jersey().register(resource)
        }
    }</pre>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Cargamos los resources desde un fichero groovy donde los tenemos definidos..." ID="ID_111081932" CREATED="1402832826027" MODIFIED="1402832846000">
<node ID="ID_1241473683" CREATED="1402832641686" MODIFIED="1402832641689"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>List?&gt; loadResources(
        GroovyWizardConfiguration configuration,
        Environment environment) {

        InputStream resourcesStream = getClass().getResourceAsStream('/gw/app/Resources.groovy')
        Reader resourcesReader = new InputStreamReader(resourcesStream)
        CompilerConfiguration compilerConfiguration = new CompilerConfiguration()
        compilerConfiguration.setScriptBaseClass(GroovyWizardResourcesScript.class.name)
        Binding bindings = new Binding()

        bindings.setVariable('configuration', configuration)
        bindings.setVariable('environment', environment)

        GroovyShell shell = new GroovyShell(getClass().classLoader, bindings, compilerConfiguration)

        return (List?&gt;) shell.evaluate(resourcesReader)

    }</pre>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="GroovyWizardConfiguration.groovy" ID="ID_1694658190" CREATED="1402831432859" MODIFIED="1402831432859">
<node TEXT="Esta clase centraliza la configuracion, por defecto se lee de un fichero &quot;json&quot; y necesitas una clase java que mapee los atributos, aqui lo leemos de un fichero groovy y los atributos se mapean directamente usan las propiedades dinamicas del lenguaje." ID="ID_412756593" CREATED="1402833037182" MODIFIED="1402833114605"/>
<node TEXT="Extendemos" ID="ID_916384354" CREATED="1402833119423" MODIFIED="1402833122632">
<node ID="ID_128628460" CREATED="1402832979547" MODIFIED="1402833013721"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>@CompileStatic
class GroovyWizardConfiguration extends Configuration {</pre>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Cargamos las propiedades" ID="ID_1949425541" CREATED="1402833124705" MODIFIED="1402833129863">
<node ID="ID_1557390413" CREATED="1402833013726" MODIFIED="1402833032482"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>    Map configuration = [:]

    Object propertyMissing(final String name) {
        configuration[name] ?: getFreshValue(name)
    }

    Object getFreshValue(final String key) {
        URL resourceURL =
            this.getClass().classLoader.getResource('gw/app/Config.groovy')
        configuration = new ConfigSlurper().parse(resourceURL)
        return configuration[key]
    }</pre>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="GroovyWizardResourcesScript.groovy" ID="ID_95138487" CREATED="1402831432861" MODIFIED="1402831432861">
<node TEXT="Aqui de alguna manera solo se define la estructura del script groovy que va a contener los resources, porque como hemos visto la lectura se realiza en GroovyWizardApplication.loadResources" ID="ID_879869805" CREATED="1402833207245" MODIFIED="1402833351720"/>
<node TEXT="abstract class GroovyWizardResourcesScript extends Script {&#xa;&#xa;    def resources(Closure closure) {&#xa;        this.binding.with(closure)&#xa;    }&#xa;&#xa;}" ID="ID_755067532" CREATED="1402833215580" MODIFIED="1402833224982"/>
</node>
<node TEXT="SimpleJSON.groovy" ID="ID_1178271575" CREATED="1402831455661" MODIFIED="1402831455661">
<node ID="ID_1770286973" CREATED="1402833677472" MODIFIED="1402833693235"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>@Target([ElementType.TYPE])
@Retention(RetentionPolicy.SOURCE)
@GroovyASTTransformationClass(['gw.ast.SimpleJSONAst'])
@interface SimpleJSON {
    String value() default '/'
}      
    </pre>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="SimpleJSONAst.groovy" ID="ID_1424033433" CREATED="1402831455661" MODIFIED="1402831455661">
<node ID="ID_1277179215" CREATED="1402833729326" MODIFIED="1402833778829"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>void visit(ASTNode[] nodes, SourceUnit sourceUnit) {
        if (!nodes) return
        if(nodes.length  2) return
        if(!(nodes[0] instanceof AnnotationNode)) return
        if(!(nodes[0].classNode.name == SimpleJSON.class.name)) return
        if(!(nodes[1] instanceof ClassNode)) return

        AnnotationNode annotationNode = nodes[0]
        ClassNode annotatedClassNode = nodes[1]

        String path = annotationNode.getMember('value').text
        List<methodnode/> allMethods = annotatedClassNode.methods.findAll { !it.isSynthetic() }

        if (!allMethods) {
            sourceUnit.addError(new SyntaxException('Micro-Service needs at least one method!', 0, 0))
        }
        if (allMethods?.size() &gt; 1) {
            sourceUnit.addError(new SyntaxException('Micro-Service ambiguity: Only one method allowed!',0, 0))
        }

        annotatedClassNode.addAnnotations([
            buildPathAnnotation(path),
            buildContentTypeAnnotation()
        ])

        MethodNode methodNode = allMethods.first()
        methodNode.addAnnotation(
            new AnnotationNode(
                ClassHelper.make(javax.ws.rs.GET)
            )
        )

    }</pre>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_1942344325" CREATED="1402833778836" MODIFIED="1402833786650"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>AnnotationNode buildPathAnnotation(String path) {
        AnnotationNode annotationNode =
            new AnnotationNode(ClassHelper.make(javax.ws.rs.Path))
        annotationNode.addMember('value', new ConstantExpression(path))
        return annotationNode
    }</pre>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_1624313495" CREATED="1402833786656" MODIFIED="1402833786659"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>AnnotationNode buildContentTypeAnnotation() {
        AnnotationNode annotationNode =
            new AnnotationNode(ClassHelper.make(javax.ws.rs.Produces))
        annotationNode.addMember(
            'value',
            new PropertyExpression(
                new ClassExpression(ClassHelper.make(javax.ws.rs.core.MediaType)),
                new ConstantExpression('APPLICATION_JSON')
            )
        )
        return annotationNode
    }</pre>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
<node TEXT="Example" ID="ID_1050175743" CREATED="1402831320053" MODIFIED="1402831321624">
<node TEXT="Aqui se monta la aplicacion de ejemplo, que sera junto con el core un &quot;submodule&quot; que se compilan juntos gracias a gradle" ID="ID_977227585" CREATED="1402831892441" MODIFIED="1402831970636"/>
<node TEXT="HelloGroovyResource.groovy" ID="ID_1985173970" CREATED="1402831498698" MODIFIED="1402831498698">
<node TEXT="Version groovy del resource" ID="ID_1547313350" CREATED="1402833926559" MODIFIED="1402833932876"/>
<node ID="ID_391063711" CREATED="1402833868993" MODIFIED="1402833887683"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>import gw.ast.SimpleJSON

@SimpleJSON('/hello-groovy')
class HelloGroovyResource {

    String sayHello() {
        return &quot;Hello from groovy&quot;
    }

}      
    </pre>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="HelloWorldResource.groovy" ID="ID_1424057944" CREATED="1402831498698" MODIFIED="1402831498698">
<node TEXT="Version java del resource" ID="ID_1065114411" CREATED="1402833913475" MODIFIED="1402833936933"/>
</node>
<node TEXT="Config.groovy" ID="ID_947716292" CREATED="1402831521143" MODIFIED="1402831521143">
<node TEXT="version = 1.0" ID="ID_1218275757" CREATED="1402834000393" MODIFIED="1402834000393"/>
</node>
<node TEXT="Resources.groovy" ID="ID_1488569576" CREATED="1402831521143" MODIFIED="1402831521143">
<node ID="ID_1803302173" CREATED="1402833988578" MODIFIED="1402834033619"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>import gw.res.HelloWorldResource
import gw.res.HelloGroovyResource

resources {
&#160;&#160;&#160;&#160;return [
&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;new HelloWorldResource(&quot;${configuration.version}&quot;),
&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;new HelloGroovyResource()
&#160;&#160;&#160;&#160;]
}</pre>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
</node>
</node>
<node TEXT="&#xbf;Otro enfoque?" ID="ID_1676493705" CREATED="1402829209499" MODIFIED="1402829216567">
<node TEXT="Primera cosa a DSLizar" ID="ID_964864542" CREATED="1401368719392" MODIFIED="1401368736525">
<node ID="ID_1648690502" CREATED="1401368737112" MODIFIED="1402831620723"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>- XXXApplication.run
final XXXResource resource = new XXXResource(param1, param2);
&#160;&#160;&#160;&#160;environment.jersey().register(resource);

&#160;&#160;&#160;&#160;final XXXHealthCheck healthCheck = new XXXHealthCheck(param1);
&#160;&#160;&#160;&#160;environment.healthChecks().register(&quot;template&quot;, healthCheck);</pre>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_1658006083" CREATED="1402831631425" MODIFIED="1402831685297"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>enviroment {
    jersey {
        XXXResource {
            param1,
            param2
        }
    }
    healthChecks {
        XXXHealthCheck {
            param1
        }
    }
}</pre>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="La configuracion que se coja directamente del fichero" ID="ID_1587663464" CREATED="1401368755048" MODIFIED="1401368763597">
<node TEXT="config.yml y no sea necesario ... XXXApplication.run(XXXConfiguration)" ID="ID_825814261" CREATED="1401368772128" MODIFIED="1401368796757"/>
</node>
<node TEXT="Modelizar los rest (XXXResource) del estilo a ratpack" ID="ID_847041044" CREATED="1401368799224" MODIFIED="1401368832748"/>
</node>
</node>
<node TEXT="Cliente Android" ID="ID_898401756" CREATED="1402351176195" MODIFIED="1402351179043">
<node TEXT="Para crear un proyecto Android, NO VAMOS A USAR el Android Studio, no lo vamos a construir con Gradle, vamos a usar maven (otra vez ;) usando los archetypes que tenemos disponibles junto con su plugin para Android." ID="ID_1975668631" CREATED="1402494374032" MODIFIED="1402495233129"/>
<node TEXT="Elementos necesarios" ID="ID_1226790105" CREATED="1402494675558" MODIFIED="1402494680155">
<node TEXT="Usar un maven archetype para crear la estructura del proyecto: http://stand.spree.de/wiki_details_maven_archetypes" ID="ID_859609277" CREATED="1402494750790" MODIFIED="1402494959521"/>
<node TEXT="Ese arquetipo usara el plugin: https://code.google.com/p/maven-android-plugin/wiki/GettingStarted" ID="ID_1050042155" CREATED="1402494972301" MODIFIED="1402494979841"/>
<node TEXT="Integracion con Eclipse: http://rgladwell.github.io/m2e-android/" ID="ID_1003400625" CREATED="1402494735030" MODIFIED="1402494743106"/>
</node>
<node TEXT="Pasos" ID="ID_1667544414" CREATED="1402495246235" MODIFIED="1402495253848">
<node TEXT="Vamos a detallar los pasos necesarios" ID="ID_1811543678" CREATED="1402520394169" MODIFIED="1402520403035"/>
<node TEXT="Usando el archetype de Android para maven" ID="ID_944944355" CREATED="1402520156480" MODIFIED="1402520340271">
<node ID="ID_533706522" CREATED="1402520345564" MODIFIED="1402520360158"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>mvn archetype:generate \
  -DarchetypeArtifactId=android-quickstart \
  -DarchetypeGroupId=de.akquinet.android.archetypes \
  -DarchetypeVersion=1.0.11 \
  -DgroupId=com.accreativos \
  -DartifactId=whatshappening</pre>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="Necesitamos usar el emulador de android con una SD" ID="ID_1227707207" CREATED="1402520156480" MODIFIED="1402520424829">
<node TEXT="mksdcard 256M sdcard_dev.iso" ID="ID_1570816789" CREATED="1402520156483" MODIFIED="1402520156483"/>
<node TEXT="On menu Run -&gt; Run Configurations, click on Android Configuration on the left tree menu, click on tab Target on the right pane." ID="ID_257351209" CREATED="1402520156483" MODIFIED="1402520156483"/>
<node TEXT="You will see at the bottom: &#x201c;Additional Emulator Commandline Options&#x201d; and an Input/Edit box below: -sdcard [sdcard location]" ID="ID_1187219714" CREATED="1402520156483" MODIFIED="1402520441998"/>
</node>
<node TEXT="Remontar sistema de ficheros como root" ID="ID_914269523" CREATED="1402520156483" MODIFIED="1402520455029">
<node TEXT="$./adb shell" ID="ID_1028473051" CREATED="1402520156484" MODIFIED="1402520156484"/>
<node TEXT="$su" ID="ID_1907924342" CREATED="1402520156484" MODIFIED="1402520156484"/>
<node TEXT="mount -o rw,remount rootfs /" ID="ID_1839277522" CREATED="1402520156484" MODIFIED="1402520156484"/>
<node TEXT="chmod 777 /mnt/sdcard" ID="ID_53365720" CREATED="1402520156484" MODIFIED="1402520156484"/>
<node TEXT="exit" ID="ID_1202854913" CREATED="1402520156484" MODIFIED="1402520156484"/>
</node>
<node TEXT="Mover ficheros a emulador android desde linea de comandos..." ID="ID_1719667781" CREATED="1402520156484" MODIFIED="1402520581881">
<node TEXT="http://jimmithy.tumblr.com/post/5389920961/moving-files-to-the-android-emulator-via-command-line" ID="ID_285883235" CREATED="1402520156485" MODIFIED="1402520156485" LINK="http://jimmithy.tumblr.com/post/5389920961/moving-files-to-the-android-emulator-via-command-line"/>
<node ID="ID_468506241" CREATED="1402520596280" MODIFIED="1402520596280"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      adb push image.jpg /mnt/sdcard/
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="Share and intents..." ID="ID_530860464" CREATED="1402520156485" MODIFIED="1402520620885">
<node TEXT="Los intents de android son los elementos de comunicacion entre &quot;programas&quot; en android, en este caso lo vamos a usar para comunicar el visor de iamgenes de la galeria, con nuestra aplicacion cliente. Se puede hacer declarativo (en el AndroidManifest.xml) o programaticamente." ID="ID_1800832667" CREATED="1402521615767" MODIFIED="1402522767001"/>
<node ID="ID_412547229" CREATED="1402522769879" MODIFIED="1402522805196"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>&lt;intent-filter&gt;
	&lt;action android:name=&quot;android.intent.action.SEND&quot; /&gt;
	&lt;category android:name=&quot;android.intent.category.DEFAULT&quot; /&gt;
	&lt;data android:mimeType=&quot;image/*&quot; /&gt;
&lt;/intent-filter&gt;</pre>
  </body>
</html>

</richcontent>
</node>
<node TEXT="Documentacion de apoyo" ID="ID_358029192" CREATED="1402521594761" MODIFIED="1402521603096">
<node TEXT="http://developer.android.com/training/sharing/send.html" ID="ID_302727231" CREATED="1402520156487" MODIFIED="1402520156487" LINK="http://developer.android.com/training/sharing/send.html"/>
<node TEXT="https://developer.android.com/training/secure-file-sharing/share-file.html" ID="ID_1671736946" CREATED="1402520156487" MODIFIED="1402520156487" LINK="https://developer.android.com/training/secure-file-sharing/share-file.html"/>
<node TEXT="http://code.tutsplus.com/tutorials/android-sdk-implement-a-share-intent--mobile-8433" ID="ID_390948812" CREATED="1402520156486" MODIFIED="1402520156486" LINK="http://code.tutsplus.com/tutorials/android-sdk-implement-a-share-intent--mobile-8433"/>
<node TEXT="http://android-developers.blogspot.com.es/2012/02/share-with-intents.html" ID="ID_618318008" CREATED="1402520156486" MODIFIED="1402520156486" LINK="http://android-developers.blogspot.com.es/2012/02/share-with-intents.html"/>
</node>
</node>
<node TEXT="Gestion de tareas en segundo plano" ID="ID_476164776" CREATED="1402521544762" MODIFIED="1402521551567">
<node TEXT="http://www.codeproject.com/Articles/162201/Painless-AsyncTask-and-ProgressDialog-Usage" ID="ID_1316139368" CREATED="1402521553449" MODIFIED="1402521553449" LINK="http://www.codeproject.com/Articles/162201/Painless-AsyncTask-and-ProgressDialog-Usage"/>
</node>
<node TEXT="Para realizar el upload file en android" ID="ID_1267693114" CREATED="1402520156487" MODIFIED="1402520972906">
<node TEXT="http://androidexample.com/Upload_File_To_Server_-_Android_Example/index.php?view=article_discription&amp;aid=83&amp;aaid=106" ID="ID_297723974" CREATED="1402520156488" MODIFIED="1402520156488" LINK="http://androidexample.com/Upload_File_To_Server_-_Android_Example/index.php?view=article_discription&amp;aid=83&amp;aaid=106"/>
</node>
</node>
<node TEXT="Proximos pasos" ID="ID_1112105564" CREATED="1402494366360" MODIFIED="1402494370204">
<node TEXT="Libreria upload: https://github.com/alexbbb/android-upload-service" ID="ID_1041632164" CREATED="1402520156488" MODIFIED="1402520947394"/>
<node TEXT="http://melix.github.io/blog/2014/06/grooid.html" ID="ID_279136011" CREATED="1402520936139" MODIFIED="1402520937880"/>
</node>
</node>
</node>
<node TEXT="What next?" POSITION="right" ID="ID_944183479" CREATED="1402831533868" MODIFIED="1402831539559">
<edge COLOR="#ffff00"/>
<node TEXT="Se admiten fork pero se prefieren para pull request ;)" ID="ID_1919185198" CREATED="1402831543550" MODIFIED="1402831560918"/>
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
<node TEXT="https://github.com/mariogarcia/groovy-wizard" ID="ID_256258698" CREATED="1402352001217" MODIFIED="1402352001217" LINK="https://github.com/mariogarcia/groovy-wizard"/>
</node>
<node TEXT="DropWizard" ID="ID_364115565" CREATED="1399418316409" MODIFIED="1399418320775">
<node TEXT="https://dropwizard.github.io/dropwizard/getting-started.html" ID="ID_614949232" CREATED="1399418321594" MODIFIED="1399418321594" LINK="https://dropwizard.github.io/dropwizard/getting-started.html"/>
<node TEXT="Example" ID="ID_735149264" CREATED="1399418442546" MODIFIED="1399418444877">
<node TEXT="https://github.com/dropwizard/dropwizard/tree/master/dropwizard-example" ID="ID_1877420616" CREATED="1399418445477" MODIFIED="1399418445477" LINK="https://github.com/dropwizard/dropwizard/tree/master/dropwizard-example"/>
</node>
</node>
<node TEXT="Android" ID="ID_210741652" CREATED="1402495323827" MODIFIED="1402495336719">
<node ID="ID_1209029540" CREATED="1402495344101" MODIFIED="1402495344101" LINK="http://stand.spree.de/wiki_details_maven_archetypes"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      http://stand.spree.de/wiki_details_maven_archetypes
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_1956863880" CREATED="1402495350778" MODIFIED="1402495350778" LINK="https://code.google.com/p/maven-android-plugin/wiki/GettingStarted"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      https://code.google.com/p/maven-android-plugin/wiki/GettingStarted
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_1129754984" CREATED="1402495358689" MODIFIED="1402495358689" LINK="http://rgladwell.github.io/m2e-android/"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      http://rgladwell.github.io/m2e-android/
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
</node>
</node>
</map>
