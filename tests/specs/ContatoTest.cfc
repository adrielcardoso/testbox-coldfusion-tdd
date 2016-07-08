/**
* This tests the BDD functionality in TestBox.
*/
component extends="testbox.system.BaseSpec"{

/*********************************** LIFE CYCLE Methods ***********************************/

	function beforeAll(){

		/**
		* 
		* service 
		* 
		* */
		userService = createMock("testbox.tests.specs.mockbox.ContatoMockTest");

		/**
		* 
		* DAO
		* 
		* */
		mockDAO = createEmptyMock('testbox.custom.ContatoDAO');


		/**
		* 
		* recurso de validação para objetos 
		* 
		* */
		addMatchers("testbox.tests.resources.CustomMatcher");

	}

	function afterAll(){
		console( "Executed afterAll() at #now()#" );
		structClear( application );
	}

/*********************************** BDD SUITES ***********************************/

	function run(){


		describe( "Contato Service", function(){ 


			it( "simples test in parse with service and return equals name seted", function(){

				// mockQuery = querySim(" id,name
				// 						1|Luis Majano
				// 						2|Alexia Majano");

				expect( "RUANITA" ).toBeLuisMajano( userService.getStName('RUANITA') );

			});



			it( "validation with status code application", function(){

				// mockQuery = querySim(" id,name
				// 						1|Luis Majano
				// 						2|Alexia Majano");

				expect( "RUANITA" ).toBeLuisMajano( userService.getStName('RUANITA') );

			});




		});























		// describe("Custom Matchers", function(){

			// describe( "Another Nested Suite", function(){

			// 	beforeEach(function(){

			// 		// include recursos de contextos externos 
			// 		addMatchers( 'testbox.tests.resources.CustomMatcher', 'testbox.tests.specs.mockbox.ContatoMockTest' );
			// 		// addMatchers( new testbox.tests.resources.CustomAsserts() );

			// 		// addMatchers( new testbox.tests.specs.mockbox.ContatoMockTest() );

			// 		nana = true;
			// 	});

			// 	// it("should be awesome", function(){

			// 	// 	expect( foofoo ).toBeAwesome();

			// 	// 	debug( " foofoo should be awesome #foofoo#" );

			// 	// });

			// 	it("should know its maker", function(){

			// 		expect('Hola Amigo!').testFunction();
					
			// 	});

			// 	it("objecto nano nao pode ser false", function(){

			// 		// expect( nana ).assertEqual();	

			// 		writeDump(testMockRealMethods());
			// 	});

			// });

			// Custom Matchers
			// describe("Nested suite: Testing loading via a CFC", function(){

			// 	beforeEach(function(){
			// 		// add custom matcher via CFC
			// 		addMatchers( new testbox.tests.resources.CustomMatcher() );
			// 		foofoo = false;
			// 	});

			// 	it("should be awesome", function(){
			// 		expect( foofoo ).toBeAwesome();
			// 		debug( " foofoo should be awesome #foofoo#" );
			// 	});

			// 	it("should know its maker", function(){
			// 		expect( "Luis Majano" ).toBeLuisMajano();
			// 	});

			// 	describe("Yet another nested suite", function(){

			// 		it("should have cascaded beforeEach() call from parent", function(){
			// 			expect( foofoo ).toBeAwesome();
			// 		});

			// 		it("should have cascaded beforeEach() call from grandparent", function(){
			// 			expect( foo ).toBeFalse();
			// 		});

			// 	});

			// });

			// Another suite
		// });

	}

	private function isLucee(){
		// return ( structKeyExists( server, "lucee" ) );
	}

}