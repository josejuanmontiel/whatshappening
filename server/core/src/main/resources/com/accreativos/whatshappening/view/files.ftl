<#-- @ftlvariable name="" type="com.accreativos.whatshappening.view.FileView" -->
<html>
    <body>
    	<ul>
	        <#list files as file>
	        	<li>
					File: ${file.fileName} <img src="/images/${file.pathToFile}" />
				</li>
			</#list>
		<ul>
    </body>
</html>