<?xml version="1.0" encoding="utf-8"?>
<project>
	<name>$name$</name>
	<description>$description$</description>
	<notes>$notes$</notes>
	<priority>$priority$</priority>
	
	$taskList:{ tl |
	<task>
		<task-name>$tl.name$</task-name>
		<task-state>$tl.state$</task-state>
		<task-priority>$tl.priority$</task-priority>
		<task-create-date>$tl.createDateT$</task-create-date>
	</task>
	}$
	
	<parent>$parent.name$</parent>
	
	$memberSet:{ ms |
	<member>
		<member-code>$ms.code$</member-code>
		<member-name>$ms.name$</member-name>
	</member>
	}$
	
</project>