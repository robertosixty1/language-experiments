var doThis = () => {
    console.log("doThis was called successfully")
};

var doThat = () => {
    console.log("doThat was called successfully")
};

// object foo
var foo = {
    "bar" : "hi, how are you doing",
};

// the var bar obtained from foo
var { bar } = foo;
console.log(bar);

// global var hello
var hello = "Hello, world!";
console.log(hello);

// global var input
var input = 10;

// condition
if (!input/*input === undefined*/)
{
    doThis();
}
else
{
    doThat();
}

// NaN
var a;
console.log(10 + a);

// null is an numeric constant to 0
var n = null;
console.log(n * 32);

// this works
if (true) {
    var x = 5;
}
console.log(x);

// this does not work
//if (true) {
//    let y = 5;
//}
//console.log(y);

// this is weird, but work
console.log(x === undefined);
var x = 3;

// and more weirdly, this does not work
//console.log(x);
//let x = 3;

// on the documentation this work, but for me no
//foo();
//function foo() {
//  console.log('bar');
//}

// ok you understand
//baz();
//var baz = function() {
//  console.log('bar2');
//};

// constant PI, must start with letter, _ or $
const PI = 3.14;

// THIS WILL CAUSE AN ERROR
//function f() {};
//const f = 5;

// JavaScript is dinamically typed, so this works
var answer = 42;
answer = 'Thanks for all the fish...';

// int to string
var a = 'LOL' + 10

// multiline string
var string =
`some
cool
stuff
going
on`
console.log(string);

/*
Data types

The latest ECMAScript standard defines eight data types:

Seven data types that are primitives:
Boolean				- true and false.
null				- A special keyword denoting a null value. (Because JavaScript is case-sensitive, null is not the same as Null, NULL, or any other variant.)
undefined			- A top-level property whose value is not defined.
Number				- An integer or floating point number. For example: 42 or 3.14159.
BigInt				- An integer with arbitrary precision. For example: 9007199254740992n.
String				- A sequence of characters that represent a text value. For example: "Howdy"
Symbol (new in ECMAScript 2015) - A data type whose instances are unique and immutable.
and Object
*/
