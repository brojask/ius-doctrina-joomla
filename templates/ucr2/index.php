<?php
// no direct access
 defined( '_JEXEC' ) or die;
?><!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" >
<head>
<?php 
	$ubicacion_web = JURI::base();
	$plantilla = $this->template;
	$resolucion = $this->params->get('dimensiones');
	$application = JFactory::getApplication();
	$this->setGenerator(null);

?>
<jdoc:include type="head" />
<script type="text/javascript" src="<?php echo $ubicacion_web; ?>/templates/<?php echo $plantilla; ?>/js/jquery-1.3.2.min.js"></script>
<script>
 var $jQueryM = jQuery.noConflict();
</script>
<script type="text/javascript" src="<?php echo $ubicacion_web; ?>/templates/<?php echo $plantilla; ?>/js/jquery.hoverIntent.minified.js"></script>
<link rel="icon" href="<?php echo $ubicacion_web; ?>templates/<?php echo $plantilla; ?>/imagenes/ucr-favicon.png" type="image/png" />
<link rel="shortcut icon" type="image/x-icon" href="<?php echo $ubicacion_web; ?>templates/<?php echo $plantilla; ?>/imagenes/ucr-favicon.ico" />
<link rel="stylesheet" href="<?php echo $ubicacion_web ?>templates/<?php echo $plantilla ?>/css/<?php echo $resolucion; ?>/estilo.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $ubicacion_web ?>templates/<?php echo $plantilla ?>/css/editor.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $ubicacion_web ?>templates/<?php echo $plantilla ?>/css/bordes.css" type="text/css" />
<?php if($this->params->get('listas_estilo') == 'si') : ?>
<link rel="stylesheet" href="<?php echo $ubicacion_web ?>templates/<?php echo $plantilla ?>/css/listas.css" type="text/css" />
<?php endif; ?>

<?php
	
class Browser 
	{ 
		/** 
			Figure out what browser is used, its version and the platform it is 
			running on. 

			The following code was ported in part from JQuery v1.3.1 
		*/ 
		public static function detect() { 
			$userAgent = strtolower($_SERVER['HTTP_USER_AGENT']); 

			// Identify the browser. Check Opera and Safari first in case of spoof. Let Google Chrome be identified as Safari. 
			if (preg_match('/opera/', $userAgent)) { 
				$name = 'opera'; 
			} 
			elseif (preg_match('/webkit/', $userAgent)) { 
				$name = 'safari'; 
			} 
			elseif (preg_match('/msie/', $userAgent)) { 
				$name = 'msie'; 
			} 
			elseif (preg_match('/mozilla/', $userAgent) && !preg_match('/compatible/', $userAgent)) { 
				$name = 'mozilla'; 
			} 
			else { 
				$name = 'unrecognized'; 
			} 

			// What version? 
			if($name == 'mozilla')
			{
				if(preg_match('/.+firefox\/([\d.]+)/', $userAgent, $matches))
					$version = $matches[1];
				elseif(preg_match('/.+(?:rv|it|ra|ie)[\/: ]([\d.]+)/', $userAgent, $matches)) 
					$version = $matches[1]; 
				else
					$version = 'unknown'; 
			}
			elseif($name == 'opera')
			{
				if(preg_match('/.+version\/([\d.]+)/', $userAgent, $matches))
					$version = $matches[1];
				elseif(preg_match('/.+(?:rv|it|ra|ie)[\/: ]([\d.]+)/', $userAgent, $matches)) 
					$version = $matches[1]; 
				else
					$version = 'unknown'; 
			}			
			elseif(preg_match('/.+(?:rv|it|ra|ie)[\/: ]([\d.]+)/', $userAgent, $matches)) 
				$version = $matches[1]; 
			else 
				$version = 'unknown'; 

			// Running on what platform? 
			if (preg_match('/linux/', $userAgent)) { 
				$platform = 'linux'; 
			} 
			elseif (preg_match('/macintosh|mac os x/', $userAgent)) { 
				$platform = 'mac'; 
			} 
			elseif (preg_match('/windows|win32/', $userAgent)) { 
				$platform = 'windows'; 
			} 
			else { 
				$platform = 'unrecognized'; 
			} 

			return array( 
				'name'      => $name, 
				'version'   => $version, 
				'platform'  => $platform, 
				'userAgent' => $userAgent 
			); 
		} 
	}
	
	$browser = Browser::detect(); 
	
	$navegador = "";
	$opera10_5 = false;
	$firefox2 = false;
	$firefox3 = false;
	$noCSSTable = false;
	
	$blank_alt = "alt=\"&nbsp;\"";
	
	if($browser['name'] == "msie" && floatval($browser['version']) >= 9)
	{
		$navegador = "ie9";
	}	
	elseif($browser['name'] == "msie" && floatval($browser['version']) >= 8 && floatval($browser['version']) < 9)
	{
		$navegador = "ie8";
		$ie = true;
	}
	elseif($browser['name'] == "msie" && floatval($browser['version']) >= 7 && floatval($browser['version']) < 8)
	{
		$navegador = "ie7";
		$ie = true;
		$noCSSTable = true;
	}
	elseif($browser['name'] == "msie" && floatval($browser['version']) >= 5 && floatval($browser['version']) < 7)
	{
		$navegador = "ie6";	
		$img_ext = "gif";
		$ie = true;
		$noCSSTable = true;
	}
	elseif($browser['name'] == "opera" && floatval($browser['version']) >= 8)
	{
		$navegador = "opera";
		if(version_compare($browser['version'], "10.5", ">="))
			$opera10_5 = true;
	}
	elseif( $browser['name'] == "mozilla" )
	{		
		$navegador = "firefox";
		if(version_compare($browser['version'], "3.5", ">="))
			$firefox3_5 = true;
		elseif(version_compare($browser['version'], "3.5", "<") && version_compare($browser['version'], "3", ">"))
			$firefox3_1 = true;
		elseif (floatval($browser['version']) < 3)
		{
			$firefox2 = true;
			$noCSSTable = true;
		}
	}
	elseif($browser['name'] == "safari")
	{
		$navegador = "safari";
		if(version_compare($browser['version'], "528", "<"))  // Safari 4
			$safari_antiguo = true;
	}
	elseif($browser['name'] == "chrome")
	{
		$navegador = "safari";
		$chrome = true;
	}	
	else
		$navegador = "general";
		
	if($navegador == "ie7" || $navegador == "ie6")
		$blank_alt = "";

switch($navegador)
{
	case "ie9":
		echo "\n	<link rel=\"stylesheet\" type=\"text/css\" href=\"".$ubicacion_web."templates/$plantilla/css/".$resolucion."/ie9.css\" />";	
	break;
	case "ie8":
		echo "\n	<link rel=\"stylesheet\" type=\"text/css\" href=\"".$ubicacion_web."templates/$plantilla/css/".$resolucion."/ie8.css\" />";	
	break;
	case "ie7":
		echo "\n	<link rel=\"stylesheet\" type=\"text/css\" href=\"".$ubicacion_web."templates/$plantilla/css/".$resolucion."/ie8.css\" />";
		echo "\n	<link rel=\"stylesheet\" type=\"text/css\" href=\"".$ubicacion_web."templates/$plantilla/css/".$resolucion."/ie7.css\" />";	
	break;
	case "ie6":
		echo "\n	<link rel=\"stylesheet\" type=\"text/css\" href=\"".$ubicacion_web."templates/$plantilla/css/".$resolucion."/ie8.css\" />";
		echo "\n	<link rel=\"stylesheet\" type=\"text/css\" href=\"".$ubicacion_web."templates/$plantilla/css/".$resolucion."/ie7.css\" />";
		echo "\n	<link rel=\"stylesheet\" type=\"text/css\" href=\"".$ubicacion_web."templates/$plantilla/css/".$resolucion."/ie6.css\" />";
	break;
	case "opera":
		echo "\n	<link rel=\"stylesheet\" type=\"text/css\" href=\"".$ubicacion_web."templates/$plantilla/css/".$resolucion."/opera.css\" />";
		if($opera10_5)
			echo "\n	<link rel=\"stylesheet\" type=\"text/css\" href=\"".$ubicacion_web."templates/$plantilla/css/".$resolucion."/opera10_5.css\" />";
	break;
	case "firefox":
		echo "\n	<link rel=\"stylesheet\" type=\"text/css\" href=\"".$ubicacion_web."templates/$plantilla/css/".$resolucion."/firefox.css\" />";
		if($firefox2)
			echo "\n	<link rel=\"stylesheet\" type=\"text/css\" href=\"".$ubicacion_web."templates/$plantilla/css/".$resolucion."/firefox2.css\" />";
		$firefox = true;
	break;
	case "safari":
		echo "\n	<link rel=\"stylesheet\" type=\"text/css\" href=\"".$ubicacion_web."templates/$plantilla/css/".$resolucion."/safari.css\" />";
	break;	
}	

	
?>		

<script type="text/javascript">	

function loadjscssfile(filename, filetype)
{
	if (filetype=='js'){ //if filename is a external JavaScript file
		var fileref=document.createElement('script')
		fileref.setAttribute('type','text/javascript')
		fileref.setAttribute('src', filename)
	}
	else if (filetype=='css'){ //if filename is an external CSS file
		var fileref=document.createElement('link')
		fileref.setAttribute('rel', 'stylesheet')
		fileref.setAttribute('type', 'text/css')
		fileref.setAttribute('href', filename)
	}
	if (typeof fileref!='undefined')
		document.getElementsByTagName('head')[0].appendChild(fileref)
}

chain = function(args) {  
    return function() {  
     for(var i = 0; i < args.length; i++) {  
      args[i]();  
     }  
    }  
};

function addLoad(fn) {  
    window.onload = typeof(window.onload) != 'function' ? fn : chain([onload, fn]);  
};  

addLoad( function() { 

	if (typeof(window.jQuery)=='undefined' && typeof(cargarjQuery)!='undefined')
	{
		loadjscssfile('<?php echo $ubicacion_web; ?>templates/<?php echo $plantilla; ?>/js/jquery-1.3.2.min.js', 'js');
		loadjscssfile('<?php echo $ubicacion_web; ?>templates/<?php echo $plantilla; ?>/js/jquery.hoverIntent.minified.js', 'js');
	}
		
<?php if($this->params->get('menu_acordeon') == 'si') : ?>
	$jQueryM(document).ready(function()
	{
		$jQueryM('<img class="imagen" src="<?php echo $ubicacion_web ?>templates/<?php echo $plantilla ?>/imagenes/minus.png" />').prependTo('.columna_izquierda .module div div div ul li.parent, .columna_izquierda .module div div div ul li.parent');
		$jQueryM('.columna_izquierda .module div div div ul li.parent:not(li.active), .columna_izquierda .module div div div ul li.parent:not(li.active)').children('ul').slideUp('fast');
		$jQueryM('.columna_izquierda .module div div div ul li.parent:not(li.active) .imagen, .columna_izquierda .module div div div ul li.parent:not(li.active) .imagen').attr('src', '<?php echo $ubicacion_web ?>templates/<?php echo $plantilla ?>/imagenes/plus.png').children('ul').slideUp('fast');
	
		$jQueryM('.columna_izquierda .module div div div ul li.parent a, .columna_izquierda .module div div div ul li.parent span').hoverIntent(function()
		{		
			$jQueryM(this).parent().children('ul').slideDown(300);
			$jQueryM(this).parent().children('.imagen').attr('src', '<?php echo $ubicacion_web ?>templates/<?php echo $plantilla ?>/imagenes/minus.png');
			$jQueryM(this).parent().siblings().children('ul').slideUp('fast');
			$jQueryM(this).parent().siblings('.parent').children('.imagen').attr('src', '<?php echo $ubicacion_web ?>templates/<?php echo $plantilla ?>/imagenes/plus.png');
		}, function () {});
		
		$jQueryM('.columna_izquierda .module div div div ul li:not(li.parent) a, .columna_izquierda .module div div div ul li:not(li.parent) span').hoverIntent(function() 
		{
			$jQueryM(this).parent().siblings().children('ul').slideUp('fast');
			$jQueryM(this).parent().siblings('.parent').children('.imagen').attr('src', '<?php echo $ubicacion_web ?>templates/<?php echo $plantilla ?>/imagenes/plus.png');
		}, function () {});
				
	});	
<?php endif; ?>		
} );
</script>
<?php if($navegador == "ie6") : ?>
<script type="text/javascript" src="<?php echo $ubicacion_web; ?>/templates/<?php echo $plantilla; ?>/js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="<?php echo $ubicacion_web; ?>/templates/<?php echo $plantilla; ?>/js/jquery.pngFix.js"></script>
<script type="text/javascript">
addLoad( function() { 
	jQueryP = jQuery.noConflict();
	jQueryP(function(jQueryP){jQueryP(document).pngFix();});
});	
</script>
<?php endif; ?>	


<link rel="stylesheet" href="<?php echo $ubicacion_web ?>templates/<?php echo $plantilla ?>/css/<?php echo $resolucion; ?>/extra.css" type="text/css" />
</head>
<body>
<a name="up" id="up"></a>

	<?php if($this->countModules('arriba')) : ?>
	<div class="divisor_encabezado">
		<jdoc:include type="modules" name="arriba" />
	</div> <!-- divisor_encabezado -->	
	<?php endif; ?>	<!-- arriba -->
	
	<div class="centrado">
	<?php if($this->params->get('ancho_fijo') == 'si') : ?>
	<div class="marco_principal" id="contenedor_externo" width="<?php echo $this->params->get('ancho') ?>" style="width:<?php echo $this->params->get('ancho') ?>px;" >
	<?php else : ?>
	<div class="marco_principal" id="contenedor_externo">
	<?php endif; ?>	<!-- ancho_fijo -->
	<?php if($noCSSTable) : ?>
	<table>
		<tr>
			<td>
	<?php endif; ?>	<!-- noCSSTable -->
        <div class="fuera_pestana" id="id_fuera_pestana">
		<div class="top_left">		
			<div class="top_right"></div>
			<div class="top"></div>
		</div>					
			
        <div class="left">		
        <div class="right">		
		
		<div class="fondo_encabezado">
			<?php
				if($navegador != "ie6")
					echo "<img src=\"".$ubicacion_web."templates/".$plantilla."/imagenes/fondo_encabezado.png\" width=\"100%\" height=\"111px\" />";
			?>
		</div>
		
		<div class="adorno_sitio"><div>&nbsp;</div></div>	
		
		<div class="encabezado" id="page_header">			

			<div class="barra_titulo">
				<div class="firma_ucr"><a href="<?php echo $this->baseurl; ?>"><span>UNIVERSIDAD DE COSTA RICA</span></a></div>
				<?php if($this->countModules('arriba_izquierda')) : ?><div class="logo_sitio"><span><jdoc:include type="modules" name="arriba_izquierda" /></span></div><?php endif; ?>
			</div>			
			<jdoc:include type="modules" name="top" />

			<div class="sub_encabezado1" id="id_sub_encabezado1">
				<jdoc:include type="modules" name="arriba_centro" />
			</div> <!-- sub_encabezado1 -->

			<?php if($this->countModules('arriba_derecha')) : ?>
			<div class="sub_encabezado2" id="id_sub_encabezado2">
				<jdoc:include type="modules" name="arriba_derecha" />
			</div> <!-- sub_encabezado2 -->	
			<?php endif; ?>
			
		</div>	<!-- encabezado -->				
	
	<div class="divisor">&nbsp;</div>
        <div class="interno">		

			<div class="contenidos" id="id_contenidos">
			<?php if($noCSSTable) : ?>
			<table cellspacing="0" cellpadding="0" style="margin:0px;padding:0px;">
				<tr>			
			<?php endif; ?>	<!-- NO_CSS_TABLE -->				
				
				<?php if($this->countModules('banner_principal')) : ?>
				<div class="banner_principal">
				<jdoc:include type="modules" name="banner_principal" />
				</div>
				<?php endif; ?>				
				<jdoc:include type="modules" name="position-5" />
				
				<?php if($this->countModules('left or izquierda_arriba or izquierda_abajo or position-7')) : ?>
					<?php if($noCSSTable) : ?>
					<td valign="top" class="columna_izquierda">
					<?php endif; ?>	<!-- NO_CSS_TABLE -->
				<div class="columna_izquierda<?php if($this->countModules('banner_principal')): ?> con_banner<?php endif; ?>" id="id_columna_izquierda">
					<?php if($this->countModules('left or izquierda_arriba')) : ?>
					<?php if($this->params->get('nombre_sitio_izquierda') == "si" || $this->countModules('titulo_izquierda_arriba')) : ?><div class="nombre_sitio"><span><?php if($this->params->get('nombre_sitio_izquierda') == "si") : ?><?php echo $application->getCfg('sitename'); ?><?php endif; ?><jdoc:include type="modules" name="titulo_izquierda_arriba" /></span></div><?php endif; ?>
					<jdoc:include type="modules" name="left" style="rounded" />
					<div class="arriba">
					<jdoc:include type="modules" name="izquierda_arriba" style="rounded" />
					</div>
					<div class="moduleseparador">
					<div>
						<div>
							<div></div>
						</div>
					</div>
					</div>
					<?php endif; ?>	<!-- left or izquierda_arriba -->
					<div class="abajo">
					<jdoc:include type="modules" name="izquierda_abajo" style="rounded" />
					<jdoc:include type="modules" name="position-7" />
					</div>
				</div> <!-- columna_izquierda -->
					<?php if($noCSSTable) : ?>
					</td>
					<?php endif; ?>	<!-- NO_CSS_TABLE -->
				<?php endif; ?>
					<?php if($noCSSTable) : ?>
					<td valign="top" class="columna_principal">
					<?php endif; ?>	<!-- NO_CSS_TABLE -->

				<?php if($this->countModules('logo')) : ?>
					<?php if($noCSSTable) : ?>
					<table id="tabla">
					<tr>
					<td colspan="2">
					<?php endif; ?>	<!-- NO_CSS_TABLE -->
					<div class="celda<?php if($this->countModules('logo')) : ?> contenidos_logo<?php endif; ?>">
					<div class="logo">
						<jdoc:include type="modules" name="logo" />
					</div>		
					<?php if($noCSSTable) : ?>
					</td>
					</tr>
					<tr>
					<td>					
					<?php endif; ?>	<!-- NO_CSS_TABLE -->
					<div class="separador-float"></div>
					<div class="table">						
				<?php endif; ?> <!-- logo -->
					
				<div class="columna_principal<?php if($this->countModules('logo') || $this->countModules('banner_principal')): ?> con_logo<?php endif; ?>" id="id_columna_principal">

					<jdoc:include type="modules" name="centro_arriba" />

					<?php if($this->countModules('breadcrumb')) : ?>
					<div class="ruta">
						<jdoc:include type="modules" name="ruta" />
						<jdoc:include type="modules" name="breadcrumb" />						
					</div>
					<?php endif; ?>
						
					<?php if($this->countModules('bajo_ruta')) : ?>
					<div class="bajo_ruta">
					<jdoc:include type="modules" name="bajo_ruta" />
					</div>
					<?php endif; ?>
					
					<div class="divisor">&nbsp;</div>
					<jdoc:include type="message" />
					<jdoc:include type="component" />

					<jdoc:include type="modules" name="centro_abajo" />

				</div> <!-- columna_principal -->
				
				<?php if($noCSSTable) : ?>
					</td>
					<?php endif; ?>	<!-- NO_CSS_TABLE -->
				<?php if($this->countModules('right or derecha')) : ?>
					<?php if($noCSSTable) : ?>
					<td valign="top" class="columna_derecha">
					<?php endif; ?>	<!-- NO_CSS_TABLE -->
				<div class="columna_derecha" id="id_columna_derecha">
					<jdoc:include type="modules" name="logo2" />				
					<jdoc:include type="modules" name="derecha" style="xhtml" />
					<jdoc:include type="modules" name="right" style="xhtml"/>			
				</div> <!-- columna_derecha -->			
				
					<?php if($noCSSTable) : ?>
					</td>
					<?php endif; ?>	<!-- NO_CSS_TABLE -->
				<?php endif; ?>	
				
				<?php if($this->countModules('logo')) : ?>
				</div>
				</div>	
				<?php if($noCSSTable) : ?>
						</tr>
					</table>
					</td>
				<?php endif; ?>
				<?php endif; ?>	<!-- logo -->
				
				<?php if($noCSSTable) : ?>				
							</tr>
			</table>
				<?php endif; ?>	<!-- NO_CSS_TABLE -->
			</div>  <!-- contenidos -->
		
			<div class="suscripciones centro-abajo">
				<jdoc:include type="modules" name="syndicate" />
				<jdoc:include type="modules" name="abajo_centro" />
			</div>
			
		</div> <!-- interno --> 
		
		<div class="pie<?php if($this->countModules('pie_derecha')) : ?> con-derecha<?php endif; ?>">				
			<div class="fondo_pie">
				<img src="<?php echo $ubicacion_web ?>templates/<?php echo $plantilla ?>/imagenes/horizonte_inferior_a.png" width="100%" height="46px" />
				<div class="modulos">
					<div class="izquierda">
						<jdoc:include type="modules" name="pie" />
						<jdoc:include type="modules" name="footer" style="xhtml"/>
					</div>
					<?php if($this->countModules('pie_derecha')) : ?>
					<div class="derecha">
						<jdoc:include type="modules" name="pie_derecha" />
					</div>
					<?php endif; ?>
				</div>				
			</div>			

		</div>					
			
		</div> <!-- right -->
		</div> <!-- left -->

		<div class="bottom_left">		
			<div class="bottom_right"></div>
			<div class="bottom"></div>
		</div>        
        		
		</div> <!-- fuera_pestana -->
		<?php if($noCSSTable) : ?>
			</td>
			<td valign="top">
		<?php endif; ?>	<!-- noCSSTable -->
	    <?php if($this->countModules('pestana')) : ?>		
		<div class="pestana" id="id_pestana">	
			<div class="contenedor">
				<div class="pest_top"></div>		
				<div class="pest_middle" style="height:<?php echo $this->params->get('alto_pestana') ?>px;">
				</div>		
				<div class="pest_bottom"></div>
				<jdoc:include type="modules" name="pestana" />
			</div>
		</div>
		<?php endif; ?> <!-- pestana -->
	<?php if($noCSSTable) : ?>
			</td>
		</tr>
	</table>	
	<?php endif; ?>	<!-- noCSSTable -->		
    </div> <!-- marco_principal -->
    </div> <!-- centrado -->
	
	<?php if($this->countModules('abajo')) : ?>
	<div class="divisor_inferior">
		<jdoc:include type="modules" name="abajo" />
	</div> <!-- divisor_inferior -->		
	<?php endif; ?>	<!-- abajo -->

<jdoc:include type="modules" name="debug" />	
	
</body>
<noscript>
	<style type="text/css">
	@import url("<?php echo $ubicacion_web; ?>templates/<?php echo $plantilla; ?>/css/no_js.css");	
	</style>
</noscript>
</html>
