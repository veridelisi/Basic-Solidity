// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract FunctionVisibility {

    string public setToHelloWorld;

    function publicFunction() public {
        // callable by external contracts, derived contracts, and functions in this contract
        setToHelloWorld = "Hello World public ";
       
    }
    function externalFunction() external {
       // callable by external contracts
        setToHelloWorld = "Hello World external ";
       
    }
    function internalFunction() internal {
        // callable by derived contracts and functions in this contract
        setToHelloWorld = "Hello World internal ";
       
    }
    function privateFunction() private {
        // callable by only functions in this contract
        setToHelloWorld = "Hello World private ";
        
    }
    function reset() public {
        setToHelloWorld = "";
       
    }
}
contract ExternalContract {

    FunctionVisibility external_contract = new FunctionVisibility();

    function callPublicFromExternal() public {
        // This succeeds. Public functions are included in contract interface
        external_contract.publicFunction();
    }

    function callExternalFromExternal() public {
        // This succeeds. External functions are included in contract interface
        external_contract.externalFunction();
    }

    function callInternalFromExternal() public {
        // This fails. Internal functions are not included in contract interface
         //external_contract.internalFunction();
        // TypeError: internalFunction not found or not visible after argument-dependent lookup in contract FunctionVisibility
    }

    function callPrivateFromExternal() public {
        // This fails. Private functions are not included in contract interface
        // external_contract.privateFunction();
        // TypeError: member "privateFunction" not found or not visibile after argement-dependent lookup in contract FunctionVisibility
    }

   
}
contract DerivedContract is FunctionVisibility {

    function callPublicFromDerived() public {
        // This succeeds via inheritance of public functions
        publicFunction();
    }

    function callExternalFromDerived() public {
        // This fails. External functions are not inherited by derived contracts
        // externalFunction();
        // DeclarationError: Undeclared identifier
    }

    function callInternalFromDerived() public {
        // This succeeds via inheritance of internal functions
        internalFunction();
    }

    function callPrivateFromDerived() public {
        // This fails. Private functions are not inherited by derived contracts
        // privateFunction();
        // DeclarationError: Undeclared identifier
    }
}
