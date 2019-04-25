<!DOCTYPE html>
<html>
  <head>
	<meta charset='utf-8'>
	<meta http-equiv="X-UA-Compatible" content="chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link href='//fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="/stylesheets/stylesheet.css" media="screen">
	<link rel="stylesheet" type="text/css" href="/stylesheets/print.css" media="print">
	<link rel="stylesheet" type="text/css" href="/stylesheets/tree.css">
	<link rel="stylesheet" type="text/css" href="/css/tabs.css">





	<script src="/js/libs/aws-sdk-2.442.0.min.js"></script>
	<script src="/js/libs/dynamodbjs.js"></script>




	<script src="/js/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="/js/tabs.js"></script>
	<script src="/js/libs/ace/1.2.6/ace.js"></script>
	<script src="/js/libs/ace/1.2.6/mode-javascript.js"></script>
	<script src="/js/libs/ace/1.2.6/mode-sql.js"></script>
	<script src="/js/libs/ace/1.2.6/mode-html.js"></script>
	<script src="/js/libs/ace/1.2.6/theme-twilight.js"></script>
	<script src="/js/libs/ace/1.2.6/theme-monokai.js"></script>
	<script src="/js/libs/ace/1.2.6/theme-textmate.js"></script>
	<script src="/js/libs/ace/1.2.6/theme-iplastic.js"></script>
	<!-- <script src="https://rawgit.com/databank/ui-dynamodb/master/public/js/bundle.js"></script> -->


	<title>Amazon DynamoDB npm module for nodejs - AWSPilot </title>
  </head>

<body>
	<header>

			<h1><b>@awspilot</b>/dynamodb</h1>

			<div class="gh" style="position: absolute;top: 15px;right: 40px;">

				<a class="github-button" href="https://github.com/awspilot/dynamodb-oop/issues" data-icon="octicon-issue-opened" data-show-count="true" aria-label="Issue awspilot/dynamodb-oop on GitHub">Issue</a>

				<a class="github-button" href="https://github.com/awspilot/dynamodb-oop" data-icon="octicon-star" data-show-count="true" aria-label="Star awspilot/dynamodb-oop on GitHub">Star</a>

				<a class="github-button" href="https://github.com/awspilot/dynamodb-oop/fork" data-icon="octicon-repo-forked" data-show-count="true" aria-label="Fork awspilot/dynamodb-oop on GitHub">Fork</a>


			</div>
			<!--
				<a href="https://www.npmjs.com/package/@awspilot/dynamodb" class="button"><img src="https://nodei.co/npm/@awspilot/dynamodb.png?downloads=true" alt="npm page"></a>
			-->

	</header>

    <div id="content-wrapper">




        <aside id="sidebar">






<!--
<li>
	<input type="checkbox" id="treeops" />



	<label class="tree_label sub" for="treeops">Operations</label>
	<ul>
		<li><span class="tree_label"><a href="/pages/insert/">Insert</a>
		<li><span class="tree_label"><a href="/pages/update/">Update</a>
		<li><span class="tree_label"><a href="/pages/replace/">Replace</a>
		<li><span class="tree_label"><a href="/pages/delete/">Delete</a>
		<li><span class="tree_label"><a href="/pages/get/">Get</a>
		<li><span class="tree_label"><a href="/pages/query/">Query</a>
		<li><span class="tree_label"><a href="/pages/scan/">Scan</a>
	</ul>
-->




<ul class="tree">
	<li>
		<input type="checkbox" id="awspilot" checked />
		<label class="tree_label sub" for="awspilot"><img src="/images/folder_flat.png"/> @awspilot</label>
		<ul>
			<li>
				<input type="checkbox" id="dynamodb" checked />
				<label class="tree_label sub" for="dynamodb"><img src="/images/folder_flat.png"/> dynamodb</label>
				<ul>
					<li><span class="tree_label"><a href="/"> <img src="/images/text.png"/> README.md</a></span>
					<li><span class="tree_label"><a href="/pages/apidef/"> <img src="/images/text.png"/> API_REF.md</a></span>
					<li><span class="tree_label"><a href="/pages/sql/"> <img src="/images/text.png"/> SQL.md </a>
					<li><span class="tree_label"><a href="/pages/changelog/"> <img src="/images/text.png"/> ChangeLog.md</a>


					<li><span class="tree_label"><a href="/pages/create-table/"> <img src="/images/code.png"/> create_table.js</a>
					<li><span class="tree_label"><a href="/pages/insert/"> <img src="/images/code.png"/> insert.js</a>
					<li><span class="tree_label"><a href="/pages/insert-or-update/"> <img src="/images/code.png"/> insert_or_update.js</a>
					<li><span class="tree_label"><a href="/pages/insert-or-replace/"> <img src="/images/code.png"/> insert_or_replace.js</a>
					<li><span class="tree_label"><a href="/pages/batch-insert/"> <img src="/images/code.png"/> batch_insert.js</a>
					<li><span class="tree_label"><a href="/pages/update/"> <img src="/images/code.png"/> update.js </a>
					<li><span class="tree_label"><a href="/pages/replace/"> <img src="/images/code.png"/> replace.js</a>
					<li><span class="tree_label"><a href="/pages/delete/"> <img src="/images/code.png"/> delete.js</a>
					<li><span class="tree_label"><a href="/pages/get/"> <img src="/images/code.png"/> get.js</a>
					<li><span class="tree_label"><a href="/pages/query/"> <img src="/images/code.png"/> query.js </a>
					<li><span class="tree_label"><a href="/pages/scan/"> <img src="/images/code.png"/> scan.js </a>
					<li><span class="tree_label"><a href="/pages/drop-index/"> <img src="/images/code.png"/> drop_index.js </a>
					<li><span class="tree_label"><a href="/pages/drop-table/"> <img src="/images/code.png"/> drop_table.js </a>



					<li>
						<input type="checkbox" id="misc" checked />
						<label class="tree_label sub" for="misc"><img src="/images/folder_flat.png"/> Misc</label>
						<ul>
							<li><span class="tree_label"><a href="/pages/empty-strings/"> <img src="/images/text.png"/> empty_strings.md</a>
							<li><span class="tree_label"><a href="/pages/datatypes/"> <img src="/images/text.png"/> data_types.md</a>
							<li><span class="tree_label"><a href="/pages/deprecated/"> <img src="/images/text.png"/> deprecated.md</a>
							<li><span class="tree_label"><a href="/pages/test/"> <img src="/images/text.png"/> test.md</a><span>
						</ul>
					<li><span class="tree_label"><a href="/pages/disqus/"> <img src="/images/text.png"/> Disqus.md</a></span>
				</ul>
			<li>
				<input type="checkbox" id="dynamodbui" checked />
				<label class="tree_label sub" for="dynamodbui"><img src="/images/folder_flat.png"/> dynamodb-ui</label>
				<ul>
					<li><span class="tree_label"><a href="/pages/ui-readme/"> <img src="/images/text.png"/> README.md</a></span>
					<li><span class="tree_label"><a href="/pages/ui-demo/"> <img src="/images/text.png"/> DEMO.md</a></span>

		</ul>
	</li>













</ul>

        </aside>




        <section id="main-content">{{{content}}}</section>
		<!-- sidebar -->


    </div>

<!--
<a href="https://github.com/awspilot/dynamodb-oop"><img style="position: absolute; top: 0; right: 0; border: 0;" src="https://camo.githubusercontent.com/652c5b9acfaddf3a9c326fa6bde407b87f7be0f4/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f6769746875622f726962626f6e732f666f726b6d655f72696768745f6f72616e67655f6666373630302e706e67" alt="Fork me on GitHub" data-canonical-src="https://s3.amazonaws.com/github/ribbons/forkme_right_orange_ff7600.png"></a>
-->

<script>
$(function() {




	$('.code').each(function() {
		var $newid = 'ace-' + Math.random()

		if ($(this).attr('id'))
			$newid = $(this).attr('id')

		$(this).attr('id', $newid)
		if (! $(this).hasClass('wide') )
			$(this).height( $(this).height() + 24 )

		var $e = ace.edit($newid)
		if ($(this).hasClass('bash')) {

		} else if ($(this).hasClass('sql')) {
			$e.getSession().setMode("ace/mode/sql")
		} else if ($(this).hasClass('html')) {
			$e.getSession().setMode("ace/mode/html")
		} else {
			$e.getSession().setMode("ace/mode/javascript")
		}

		if ($(this).hasClass('iplastic'))
			$e.setTheme("ace/theme/iplastic")
		else if ($(this).hasClass('textmate'))
			$e.setTheme("ace/theme/textmate")
		else
			$e.setTheme("ace/theme/monokai")

		if ($(this).hasClass('rw'))
			$e.setReadOnly(false)
		else
			$e.setReadOnly(true)

		$e.setShowPrintMargin(false)
		$e.setOption("highlightActiveLine", false)
		$e.setOption("showInvisibles", false)
		$e.setOption("displayIndentGuides", false)
		$e.getSession().setUseWorker(false)
	})
	$('.btn-describe').on('click', function() {
		if ($(this).hasClass('disabled'))
			return;
		describe_code(ace.edit($('.activeTab').attr('id')).getValue())
	})
	$('.btn-execute').on('click', function() {
		if ($(this).hasClass('disabled'))
			return;
		execute_code(ace.edit($('.activeTab').attr('id')).getValue())
	})
});
</script>


<script>


describe_code = function(code) {
	var editor = ace.edit('result-out')
	editor.setValue('')
	setTimeout(function() {

		(function(code) {

			var fakedynamo = {
				config: {dynamoDbCrc32: true,},
				describeTable: function( params ,callback) {
					editor.setValue( editor.getValue() + "\n\tdescribeTable\n" + JSON.stringify(params, null, "\t" ).split("\n").map(function(l) { return "\t"+l}).join("\n"),-1)
					callback(null, {
						Table: {
							KeySchema: [
								{AttributeName: 'partition_key', KeyType: 'HASH' },
								{AttributeName: 'sort_key', KeyType: 'RANGE' }
							]
						}
					})
				},

				createTable: function( params ,callback) {
					editor.setValue(editor.getValue() + "\n\tcreateTable\n" + JSON.stringify(params, null, "\t" ).split("\n").map(function(l) { return "\t"+l}).join("\n"),-1)
				},
				updateTable: function( params ,callback) {
					editor.setValue(editor.getValue() + "\n\tupdateTable\n" + JSON.stringify(params, null, "\t" ).split("\n").map(function(l) { return "\t"+l}).join("\n"),-1)
				},
				putItem: function( params ,callback) {
					editor.setValue(editor.getValue() + "\n\tputItem\n" + JSON.stringify(params, null, "\t" ).split("\n").map(function(l) { return "\t"+l}).join("\n"),-1)
				},
				updateItem: function( params ,callback) {
					editor.setValue(editor.getValue() + "\n\tupdateItem\n" + JSON.stringify(params, null, "\t" ).split("\n").map(function(l) { return "\t"+l}).join("\n"),-1)
				},
				batchWriteItem: function( params ,callback) {
					editor.setValue(editor.getValue() + "\n\tbatchWriteItem\n" + JSON.stringify(params, null, "\t" ).split("\n").map(function(l) { return "\t"+l}).join("\n"),-1)
				},
				deleteItem: function( params ,callback) {
					editor.setValue(editor.getValue() + "\n\tdeleteItem\n" + JSON.stringify(params, null, "\t" ).split("\n").map(function(l) { return "\t"+l}).join("\n"),-1)
				},
				getItem: function( params ,callback) {
					editor.setValue(editor.getValue() + "\n\tgetItem\n" + JSON.stringify(params, null, "\t" ).split("\n").map(function(l) { return "\t"+l}).join("\n"),-1)
				},
				query: function( params ,callback) {
					editor.setValue(editor.getValue() + "\n\tquery\n" + JSON.stringify(params, null, "\t" ).split("\n").map(function(l) { return "\t"+l}).join("\n"),-1)
				},
				scan: function( params ,callback) {
					editor.setValue(editor.getValue() + "\n\tscan\n" + JSON.stringify(params, null, "\t" ).split("\n").map(function(l) { return "\t"+l}).join("\n"),-1)
				},
				deleteTable: function( params ,callback) {
					editor.setValue(editor.getValue() + "\n\tdeleteTable\n" + JSON.stringify(params, null, "\t" ).split("\n").map(function(l) { return "\t"+l}).join("\n"),-1)
				},

			}
			DynamoDB = new window['@awspilot/dynamodb'](fakedynamo)
			var origainal_cl = console.log;
			console.log = function() {
				[].slice.apply(arguments).map(function(argument) {
					editor.setValue(editor.getValue() + argument + ' ',-1)
				})
				editor.setValue(editor.getValue() + "\n" ,-1)
			}
			eval(code)

		})(code)

	}, 500)

}



execute_code = function(code) {
	var editor = ace.edit('result-out')
	editor.setValue('')
	setTimeout(function() {
		;
		(function(code) {

			var ddb = new window.AWS.DynamoDB({ endpoint: 'https://djaorxfotj9hr.cloudfront.net/v1/dynamodb', region: 'us-east-1', credentials: { accessKeyId: 'myKeyId', secretAccessKey: 'y'} })

			DynamoDB = new window['@awspilot/dynamodb'](ddb)
			var origainal_cl = console.log;
			console.log = function() {
				[].slice.apply(arguments).map(function(argument) {
					if (typeof argument === "object")
						return editor.setValue(editor.getValue() + JSON.stringify(argument,null,"\t") + ' ',-1)

					editor.setValue(editor.getValue() + argument + ' ',-1)
				})
				editor.setValue(editor.getValue() + "\n" ,-1)
			}
			eval(code)

		})(code)

	}, 500)

}


// describe_code(ace.edit($('.activeTab').attr('id')).getValue())
</script>












<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-119179002-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-119179002-1');
</script>

		<script async defer src="https://buttons.github.io/buttons.js"></script>
	</body>
</html>
