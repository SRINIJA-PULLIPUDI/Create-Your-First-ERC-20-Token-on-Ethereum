// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {

    // Token metadata
    string public name = "MyToken";
    string public symbol = "MTK";
    uint8 public decimals = 18;
    uint256 public totalSupply;

    // Mapping to track balances
    mapping(address => uint256) public balanceOf;

    // Mapping for allowances
    mapping(address => mapping(address => uint256)) public allowance;

    // Events
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);

    // Constructor to initialize total supply and assign tokens to creator
    constructor(uint256 _totalSupply) {
        totalSupply = _totalSupply;
        balanceOf[msg.sender] = _totalSupply;
    }

    //  Implement Transfer Function
    // Function to transfer tokens from caller to another address
    function transfer(address _to, uint256 _value) public returns (bool success) {
        // Validate that recipient is not zero address
        require(_to != address(0), "Cannot transfer to zero address");

        // Validate sender has sufficient balance
        require(balanceOf[msg.sender] >= _value, "Insufficient balance");

        // Subtract from sender's balance
        balanceOf[msg.sender] -= _value;

        // Add to recipient's balance
        balanceOf[_to] += _value;

        // Emit Transfer event
        emit Transfer(msg.sender, _to, _value);

        return true;
    }

    //  Approve Function
    // Function to approve another address to spend tokens on your behalf
    function approve(address _spender, uint256 _value) public returns (bool success) {
        require(_spender != address(0), "Cannot approve zero address");

        allowance[msg.sender][_spender] = _value;

        emit Approval(msg.sender, _spender, _value);
        return true;
    }

    //  TransferFrom Function
    // Function to transfer tokens from one address to another address using allowance
    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    require(_to != address(0), "Cannot transfer to zero address");
    require(balanceOf[_from] >= _value, "Insufficient balance");
    require(allowance[_from][msg.sender] >= _value, "Insufficient allowance");

    balanceOf[_from] -= _value;
    balanceOf[_to] += _value;
    allowance[_from][msg.sender] -= _value;

    emit Transfer(_from, _to, _value);
    return true;
}


    //  Helper function - get total supply
    // Function to get total supply (already public, but explicit function is clearer)
    function getTotalSupply() public view returns (uint256) {
        return totalSupply;
    }

    //  Helper function - get token info
    // Function to get token information as a single call
    function getTokenInfo() 
        public 
        view 
        returns (string memory, string memory, uint8, uint256) 
    {
        return (name, symbol, decimals, totalSupply);
    }
}
