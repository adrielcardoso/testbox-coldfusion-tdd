/**
* A custom matcher
*/
component{

	function toBeAwesome( expectation ){
		if( expectation.isNot )
			return false;
		else
			return true;
	}

	function toBeLuisMajano( expectation, validation){

		var results = ( expectation.actual == validation[1] ? true : false ); 		

		if( expectation.isNot )
			return !results;
		else
			return results;
			
	}

	function testFunction(expectation){

		var results = ( expectation.actual == "Hola Amigo!" ? true : false ); 		

		if( expectation.isNot )
			return !results;
		else
			return results;

	}

}