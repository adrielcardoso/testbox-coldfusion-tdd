component
	displayname="ContatoMockTest"
	extends="testbox.system.BaseSpec" 
{
	
	function setup(){
		test = getMockBox().createEmptyMock( "testbox.custom.Test" );
	}
	
	function testMockRealMethods(){
		
		// Test = getMockBox().createMock( "testbox.Test" );
		// test.getData();
		// $assert.isEqual( -1, test.$count( "getData" ) );
		// test.$( "getData", 1000 );
		// $assert.isEqual( 0, test.$count( "getData" ) );
		// test.getData();
		// test.getData();
		// $assert.isEqual( 2, test.$count( "getData" ) );
	
		// // With DSL
		// test.$reset().$( "getData" ).$results( 1000 );
		// $assert.isEqual( 0, test.$count( "getData" ) );
		// test.getData();
		// test.getData();
		// $assert.isEqual( 2, test.$count( "getData" ) );
		// $assert.isEqual( 1000, test.getData() );
	}

	public function getStName(String stName)
	{

		Test = getMockBox().createMock( "testbox.custom.Test" );
		Test.createName(stName);

		return Test.getStName();
	}
	
	private function testFunction(){
		return "Hola Amigo!";
	}

}
