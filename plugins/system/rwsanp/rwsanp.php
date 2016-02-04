<?php
/*---------------------------------------------------------------
# Package - Asianet Pardaz Framework  
# ---------------------------------------------------------------
# Author - Mohamad Karimi http://www.asianetpardaz.com
# Copyright (C) 2012 - 2013 asianetpardaz.com. All Rights Reserved.
# license - PHP files are licensed under  GNU/GPL V2
# Websites: http://www.asianetpardaz.com 
-----------------------------------------------------------------*/
//no direct accees
defined ('_JEXEC') or die ('resticted aceess');
jimport( 'joomla.plugin.plugin' );
class  plgSystemRwsanp extends JPlugin{
	function onAfterRender(){
		  function sanitize_output($buffer) {    
          $search = array(         '/\>[^\S ]+/s', //strip whitespaces after tags, except space    
                                  '/[^\S ]+\</s', //strip whitespaces before tags, except space
				           		  '/(\s)+/s'  // shorten multiple whitespace sequences
						             );
		 $replace = array(         '>',         '<',         '\\1'       ,           ); 
		 $buffer = preg_replace($search, $replace, $buffer); 
		 $buffer = str_ireplace("//<![CDATA[","//<![CDATA[ \n",$buffer);
		 return $buffer; }
		$homepage = "administrator";
        $currentpage = $_SERVER['REQUEST_URI'];
        if(! strstr($currentpage,$homepage)){
		 ob_start("sanitize_output"); 		 
		}
		return true; 
	}
	}?>