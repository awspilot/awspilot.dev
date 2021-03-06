<div class="split-code">
	<div class="chrome-tabs">
		<div class="chrome-tabs-content">

			<div class="chrome-tab chrome-tab-current" tabid="tab1">
				<div class="chrome-tab-background">
					<svg version="1.1" xmlns="http://www.w3.org/2000/svg"><defs><symbol id="chrome-tab-geometry-left" viewBox="0 0 214 29" ><path d="M14.3 0.1L214 0.1 214 29 0 29C0 29 12.2 2.6 13.2 1.1 14.3-0.4 14.3 0.1 14.3 0.1Z"/></symbol><symbol id="chrome-tab-geometry-right" viewBox="0 0 214 29"><use xlink:href="#chrome-tab-geometry-left"/></symbol><clipPath id="crop"><rect class="mask" width="100%" height="100%" x="0"/></clipPath></defs><svg width="50%" height="100%"><use xlink:href="#chrome-tab-geometry-left" width="214" height="29" class="chrome-tab-background"/><use xlink:href="#chrome-tab-geometry-left" width="214" height="29" class="chrome-tab-shadow"/></svg><g transform="scale(-1, 1)"><svg width="50%" height="100%" x="-100%" y="0"><use xlink:href="#chrome-tab-geometry-right" width="214" height="29" class="chrome-tab-background"/><use xlink:href="#chrome-tab-geometry-right" width="214" height="29" class="chrome-tab-shadow"/></svg></g></svg>
				</div>
				<div class="chrome-tab-favicon"></div>
				<div class="chrome-tab-title">insert.js</div>
				<div class="chrome-tab-close"></div>
			</div>

			<div class="chrome-tab" tabid="tab2">
				<div class="chrome-tab-background" >
					<svg version="1.1" xmlns="http://www.w3.org/2000/svg"><defs><symbol id="chrome-tab-geometry-left" viewBox="0 0 214 29" ><path d="M14.3 0.1L214 0.1 214 29 0 29C0 29 12.2 2.6 13.2 1.1 14.3-0.4 14.3 0.1 14.3 0.1Z"/></symbol><symbol id="chrome-tab-geometry-right" viewBox="0 0 214 29"><use xlink:href="#chrome-tab-geometry-left"/></symbol><clipPath id="crop"><rect class="mask" width="100%" height="100%" x="0"/></clipPath></defs><svg width="50%" height="100%"><use xlink:href="#chrome-tab-geometry-left" width="214" height="29" class="chrome-tab-background"/><use xlink:href="#chrome-tab-geometry-left" width="214" height="29" class="chrome-tab-shadow"/></svg><g transform="scale(-1, 1)"><svg width="50%" height="100%" x="-100%" y="0"><use xlink:href="#chrome-tab-geometry-right" width="214" height="29" class="chrome-tab-background"/><use xlink:href="#chrome-tab-geometry-right" width="214" height="29" class="chrome-tab-shadow"/></svg></g></svg>
				</div>
				<div class="chrome-tab-favicon"></div>
				<div class="chrome-tab-title">insert_sql.js</div>
				<div class="chrome-tab-close"></div>
			</div>

			<div class="chrome-tab" tabid="tab3">
				<div class="chrome-tab-background" >
					<svg version="1.1" xmlns="http://www.w3.org/2000/svg"><defs><symbol id="chrome-tab-geometry-left" viewBox="0 0 214 29" ><path d="M14.3 0.1L214 0.1 214 29 0 29C0 29 12.2 2.6 13.2 1.1 14.3-0.4 14.3 0.1 14.3 0.1Z"/></symbol><symbol id="chrome-tab-geometry-right" viewBox="0 0 214 29"><use xlink:href="#chrome-tab-geometry-left"/></symbol><clipPath id="crop"><rect class="mask" width="100%" height="100%" x="0"/></clipPath></defs><svg width="50%" height="100%"><use xlink:href="#chrome-tab-geometry-left" width="214" height="29" class="chrome-tab-background"/><use xlink:href="#chrome-tab-geometry-left" width="214" height="29" class="chrome-tab-shadow"/></svg><g transform="scale(-1, 1)"><svg width="50%" height="100%" x="-100%" y="0"><use xlink:href="#chrome-tab-geometry-right" width="214" height="29" class="chrome-tab-background"/><use xlink:href="#chrome-tab-geometry-right" width="214" height="29" class="chrome-tab-shadow"/></svg></g></svg>
				</div>
				<div class="chrome-tab-favicon"></div>
				<div class="chrome-tab-title">insert_sql_values.js</div>
				<div class="chrome-tab-close"></div>
			</div>
		</div>
		<div class="chrome-tabs-bottom-bar"></div>

	</div>
	<script>
		var el = document.querySelector('.chrome-tabs')
		var chromeTabs = new ChromeTabs()

		chromeTabs.init(el, { tabOverlapDistance: 14, minWidth: 45, maxWidth: 243 })

		document.querySelector('.chrome-tabs').addEventListener('activeTabChange', function ( event ) {
			$('.code').css('z-index', 1).removeClass('activeTab')
			$('#'  +  $( event.detail.tabEl ).attr('tabid') ).css('z-index', 99).addClass('activeTab')
		})


	</script>





<div class="code rw wide textmate activeTab" id="tab1" style="position: absolute;top: 49px;left: 0px;right: 0px;bottom: 0px;z-index: 100;">


	// Insert Item ( no update )
	// will fail if item exists
	// checks the table schema to add a conditional requests and make sure item does not exist
	// WARN: use schema() to prevent describeTable call
	DynamoDB
		.table('demo_table_hash_range')
		.insert({

			// carefull though as foo.bar domain actually exists :)
			partitionKey: 'foo.bar',
			sortKey: 1,

			email: 'baz@foo.bar',

			password: 'qwert',
			boolean: true,
			number: 1,
			created_at: new Date().getTime(),
			updated_at: null,

			// server side only
			// buffer: new Buffer("test"),
			array_empty: [],

			// inserted as datatype L
			array_strings: ['alfa','beta','gama'],

			// inserted as datatype SS
			string_set1: DynamoDB.SS(['sss','bbb','ccc']),
			string_set2: new Set(['sss','bbb','ccc']),

			// inserted as datatype NS
			number_set1: DynamoDB.NS([111,222,333]),
			number_set2: new Set([111,222,333]),

			// inserted as datatype L
			list1: [7,9,15],
			list2: new Set([]),
			list3: new Set([ 'a', 1 ]),

			array_mixed: [
				null,
				"string",
				5,
				true,
				false,
				{ key: "value"},
				["nested","array"],
				//new Buffer("test")
			],

			nested_object: {
				name: "Foo",
				email: "baz@foo.bar",
				nested_attribute: {
					boolean_value: true,
					null_key: null,
					some_string: "tadaa",
					lucky_number: 12
				}
			}
		}, function(err,data) {
			console.log( err, data )
		});
</div>




<div class="code rw wide textmate" id="tab2" style="position: absolute;top: 49px;left: 0px;right: 0px;bottom: 0px;z-index: 1;">


	// SQL keywords must be enclosed in "`",
	// if no callback is supplied, promise is returned
	// new Date() is evaluated to String or Number when parsed
	//
	// WARNING:
	//    INSERT statement does not replace or update if an item with the same key exists
	//    to prevent replacing or updating, awspilot needs to know the key schema
	//    and will make an extra call to describeTable
	//    use schema() to prevent the extra describeTable call

	DynamoDB.query(`

		INSERT INTO demo_table_hash_range SET
			partitionKey = uuid('account-######-######'),
			sortKey      = 33,

			email         = 'test@test.com',
			password      = 'qwert',
			welcome       = "hello" + " " + "world",
			boolean       = true,
			number        = Math.round( 3.14 ) - 2,
			updated_at    = null,
			binary        = Buffer.from('4oya', 'base64'),


			array = [
				'hello' + " " + "world",
				1+2.14,
				null,
				true,
				Buffer.from('aXRlbTE=', 'base64'),
				{ nested_object: true },
				['nested_array'],
				new StringSet( [ 'sss','bbb','ccc' ] ),
				new NumberSet( [  111 , 222 , 333  ] ),
				new BinarySet( [ Buffer.from('aXRlbTE=','base64') ]),
			],
			object = {
				string: 's',
				number: 1,
				null: null,
				boolean: true,
				"me-too": "JSON key names can be enclosed in quotes",
				binary: Buffer.from('aXRlbTE=', 'base64'),
				ss : new StringSet( [ 'sss','bbb','ccc' ] ),
				ns : new NumberSet( [  111 , 222 , 333  ] ),
				bs : new BinarySet( [ Buffer.from('aXRlbTE=','base64') ]),
			},

			ss            =  new StringSet( [ 'sss','bbb','ccc' ] ),
			ns            =  new NumberSet( [  111 , 222 , 333  ] ),
			bs            =  new BinarySet( [ Buffer.from('aXRlbTE=','base64') ]),


			created_at    = new Date().getTime(),
			expire_at     = Math.round( (new Date().getTime() / 1000) + 60*60*24  )


		`,
		function( err, data ) {
			console.log( err, data )
		});
</div>







<div class="code rw wide textmate" id="tab3" style="position: absolute;top: 49px;left: 0px;right: 0px;bottom: 0px;z-index: 1;">

	// If only one item is specified for VALUES, awspilot will make a putItem request
	// if more items in VALUES, batchWriteItem will be performed

	DynamoDB.query(`

			INSERT INTO demo_table_hash_range VALUES ({
				partitionKey   : 'domain.com',
				sortKey      : 99,

				email         : 'test@test.com',
				password      : 'qwert',
				bool          : true,
				one           : 1,
				updated_at    : null,
				bin           : Buffer.from('4oya', 'base64'),

				array : [
					'text',
					1,
					null,
					true,
					Buffer.from('aXRlbTE=', 'base64'),
					{ nested_object: true },
					['nested_array'],
					new StringSet( [ 'sss','bbb','ccc' ] ),
					new NumberSet( [  111 , 222 , 333  ] ),
					new BinarySet( [ Buffer.from('aXRlbTE=','base64') ]),
				],
				object : {
					string: 's',
					number: 1,
					null: null,
					boolean: true,
					"me-too": "JSON key names can be enclosed in quotes",
					binary: Buffer.from('aXRlbTE=', 'base64'),
					ss : new StringSet( [ 'sss','bbb','ccc' ] ),
					ns : new NumberSet( [  111 , 222 , 333  ] ),
					bs : new BinarySet( [ Buffer.from('aXRlbTE=','base64') ]),
				},

				ss            :  new StringSet( [ 'sss','bbb','ccc' ] ),
				ns            :  new NumberSet( [  111 , 222 , 333  ] ),
				bs            :  new BinarySet( [ Buffer.from('aXRlbTE=','base64') ]),

			})

		`,
		function( err, data ) {
			console.log( err, data )
		});

</div>

</div> <!-- split code -->

<div class="split-result">
	<div class="" style="position: absolute;top: 0px;left: 0px;right: 0px;height: 40px;background-color: #f0f0f0;padding: 0px 50px;">
		<a class='btn btn-describe'> Describe </a>
		<a class='btn btn-execute'> Execute </a>
	</div>
	<div class="" style="position: absolute;top: 40px;left: 0px;right: 0px;bottom: 0px;border-top: 1px solid #ccc;">
		<div id="result-out" class="code wide textmate" style="position: absolute;top: 0px;left: 0px;right: 0px;bottom: 0px;"></div>
	</div>
</div>
