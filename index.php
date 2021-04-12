<?php

function adminer_object ()
{
	// Required to run any plugin.
	include_once "./plugins/plugin.php";

	// Plugins auto-loader.
	foreach (glob("plugins/*.php") as $filename) {
		include_once "./$filename";
	}

	// Specify enabled plugins here.
	$plugins = [
			// official plugins
			new AdminerDumpBz2(),
			new AdminerDumpDate(),
			new AdminerDumpJson(),
			new AdminerDumpXml(),
			new AdminerDumpZip(),
			new AdminerEnumOption(),
			new AdminerForeignSystem(),
			new AdminerStructComments(),
			new AdminerTablesFilter(),
			new AdminerTinymce(),
			
			// unofficial plugins
			new AdminerColorfields(),
			new AdminerDumpMarkdownDict(),
			new AdminerFloatThead(),
			// TODO https://github.com/natanfelles/adminer-ispconfig
			new AdminerDumpArray(),
			new AdminerReadableDates(),
			new AdminerResize(),
			new searchAutocomplete(),
			new AdminerSuggestTableField(),
			
			// theme
			new AdminerTheme("default-green"),
	];

	return new AdminerPlugin($plugins);
}

// Include original Adminer or Adminer Editor.
include "./adminer.php";
