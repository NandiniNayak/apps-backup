var products;


  products = [
     { name: "Sonoma", ingredients: ["artichoke", "sundried tomatoes", "mushrooms"], containsNuts: false },
     { name: "Pizza Primavera", ingredients: ["roma", "sundried tomatoes", "goats cheese", "rosemary"], containsNuts: false },
     { name: "South Of The Border", ingredients: ["black beans", "jalapenos", "mushrooms"], containsNuts: false },
     { name: "Blue Moon", ingredients: ["blue cheese", "garlic", "walnuts"], containsNuts: true },
     { name: "Taste Of Athens", ingredients: ["spinach", "kalamata olives", "sesame seeds"], containsNuts: true }
  ];

console.log(products);
products.filter(function(x){
  noNuts = [];
  // if products.containNuts === false;
  //   noNuts.push[x];
    // console.log(x);
  noNuts.push(x.containNuts === false);
  console.log(noNuts);


})
