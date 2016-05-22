<?php
class INIUpdate {
	function update($inifile, $section, $key, $value) {
		if (! file_exists ( $inifile ))
			return;
		
		$found = $this->isExistInFile ( $inifile, $section, $key );
		
		if ($found ["section"] == false) { // section and key not exist, add section and key define
			$tmphandle = fopen ( $inifile, "a" );
			fwrite ( $tmphandle, trim ( "[" . $section . "]" ) . PHP_EOL );
			fwrite ( $tmphandle, trim ( $key . '=' . $value ) . PHP_EOL );
			fclose ( $tmphandle );
		}
		if ($found ["key"] == true) { // section and key exist, just update key value
			$this->updateSectionKeyValue ( $inifile, $section, $key, $value );
		}
		if ($found ["section"] == true && $found ["key"] == false) { // section exist, append key define
			$this->appendSectionKey ( $inifile, $section, $key, $value );
		}
	}
	private function isExistInFile($file, $section, $key) {
		$found = array ();
		$section_found = false;
		$section_key_found = false;
		$section_exist = false;
		$handle = fopen ( $file, "r" );
		while ( ! feof ( $handle ) ) {
			$line = fgets ( $handle );
			if (preg_match ( '/^\s*\[/', $line ) === 1) { 
				if (preg_match ( '/^\s*\[\s*' . $section . '\s*\]\s*$/', $line ) === 1) { 
					$section_exist = true;
					$section_found = true;
				} else
					$section_exist = false; // is other section
			}
			
			if ($section_exist == true && preg_match ( '/^\s*' . $key . '\s*=/', $line ) === 1) {
				$section_key_found = true;
				break;
			}
		}
		fclose ( $handle );
		$found ["section"] = $section_found;
		$found ["key"] = $section_key_found;
		return $found;
	}
	private function updateSectionKeyValue($inifile, $section, $key, $value) {
		$tmp = tempnam ( sys_get_temp_dir (), basename ( $inifile ) );
		$tmphandle = fopen ( $tmp, "w" );
		
		$section_exist = false;
		$section_key_exist = false;
		$handle = @fopen ( $inifile, "r" );
		while ( ! feof ( $handle ) ) {
			$line = fgets ( $handle );
			if (preg_match ( '/^\s*\[/', $line ) === 1) { // is section define
				if (preg_match ( '/^\s*\[\s*' . $section . '\s*\]\s*$/', $line ) === 1) { // if the section which would update
					$section_exist = true;
				} else
					$section_exist = false; // is other section
			}
			
			if ($section_exist == true && preg_match ( '/^\s*' . $key . '\s*=/', $line ) === 1) {
				fwrite ( $tmphandle, trim ( $key . '=' . $value ) . PHP_EOL );
			} else
				fwrite ( $tmphandle, $line );
		}
		fclose ( $handle );
		
		fclose ( $tmphandle );
		unlink ( $inifile );
		copy ( $tmp, $inifile );
		unlink ( $tmp );
	}
	private function appendSectionKey($inifile, $section, $key, $value) {
		$tmp = tempnam ( sys_get_temp_dir (), basename ( $inifile ) );
		$tmphandle = fopen ( $tmp, "w" );
		
		$handle = @fopen ( $inifile, "r" );
		while ( ! feof ( $handle ) ) {
			$line = fgets ( $handle );
			fwrite ( $tmphandle, $line );
			if (preg_match ( '/^\s*\[\s*' . $section . '\s*\]\s*$/', $line ) === 1) { // append key define
				fwrite ( $tmphandle, trim ( $key . '=' . $value ) . PHP_EOL );
			}
		}
		fclose ( $handle );
		
		fclose ( $tmphandle );
		unlink ( $inifile );
		copy ( $tmp, $inifile );
		unlink ( $tmp );
	}
}

$xini = new INIUpdate();
$inifile = $argv[1];
$section = $argv[2];
$key = $argv[3];
$value = $argv[4];
$xini->update($inifile,$section,$key,$value);
?>