var mysql = require('mysql');
var inquirer = require('inquirer');
var table = require('cli-table');
var connection = mysql.createConnection({

    host: "localhost",
    port: 3306,
    user:"root",
    password:"nf4094",
    database:"bamazon"
})

connection.connect(function(err){
    console.log("Connected as id: " + connection.threadId);

})

//Calling the main function
start();

//Function to display a table through the user terminal
function showTable(){
connection.query('SELECT * FROM products', function(err, res){

    var display = new table({
        head: ['Id:', 'Product','Price','Quantity'],
        colWidths: [5,30,10,10]
    });
    for(i=0;i<res.length;i++)
     {
        display.push([res[i].item_id, res[i].product_name,"$" + res[i].price,res[i].stock_quantity]);
     }
     console.log(display.toString());
    });

}

//function to start the prompt
function start(){
    showTable();
    
    inquirer.prompt([
    {
        name:"item",
        type:"input",
        message: "What is the ID of the item you would like to buy?",
    },
    {
        name:"quantity",
        type:"input",
        message: "How many?"
    
    },
    ]).then(function(answer){
        var theID = answer.item;
        var amount = answer.quantity;
        purchase(theID,amount);
    });
}

//function to execute the actual purchase
function purchase(id, quantity){
    connection.query('SELECT * FROM products WHERE item_id=?',[id], function(err,res){
        if(quantity <= res[0].stock_quantity)
        {
            var total = res[0].price * quantity;
            console.log(total);
            var newStock = res[0].stock_quantity - quantity;
            connection.query('UPDATE products SET stock_quantity = ? WHERE item_id = ?', [newStock, id]);
            console.log("Purchase of " + res[0].product_name + "(x"+ quantity + ") complete!");      
        }
        else
        {
            console.log("No availability");
        }
    })
}