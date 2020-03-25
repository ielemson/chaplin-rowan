const arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

const orders = [
  {
    userID: 1,
    amount: 100
  },
  {
    userID: 2,
    amount: 200
  },
  {
    userID: 1,
    amount: 300
  },
  {
    userID: 1,
    amount: 400
  },
  {
    userID: 2,
    amount: 500
  },
  {
    userID: 2,
    amount: 600
  },
  {
    userID: 2,
    amount: 700
  }
];

//filter Array
// const newArr = arr.filter(a => {
//   return a % 2 === 0;
// });

//Map Array
// console.log(newArr);
// const newArr = arr.map((a, index) => {
//     return a;
//   });

//   console.log(newArr);

//Reduce Array

// const newArr = arr.reduce((num1, num2) => {
//   //   return num1 + num2;
//   console.log(num1, num2);
// });

// console.log(newArr);

const userAmount = orders
  .filter(order => order.userID === 2)
  .map(order => order.amount)
  .reduce((arr1, arr2) => arr1 + arr2);

console.log(userAmount);
