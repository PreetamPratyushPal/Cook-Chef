
let headers = new Headers();

headers.append('Content-Type', 'application/json');
headers.append('Accept', 'application/json');

headers.append('Access-Control-Allow-Origin', 'http://localhost:3000');
headers.append('Access-Control-Allow-Credentials', 'true');

headers.append('GET', 'POST', 'OPTIONS');




// const request =new XMLHttpRequest();
const urlGetAllFoods="https://foodelicious-api.000webhostapp.com/v3/foods/foods.php?uId=1&token=a1184e5353a75dc5bb7013f6b620a325&page=1";



// request.open("GET","https://foodelicious-api.000webhostapp.com/v3/foods/foods.php?uId=1&token=a1184e5353a75dc5bb7013f6b620a325&page=1");
// request.send();
// request.addEventListener('readystatechange',()=>{
//     // console.log(request,request.readyState);
    
//     if(request.readyState===4)
//     {
//         console.log(JSON.parse(request.response));
//     }
//     else
//     {
//         console.log('error');
//     }
    
//     });




//     // fetch api

// console.log(window);

const params = {
    method: 'GET',
    mode: 'no-cors',
    headers: {
        'Access-Control-Allow-Origin': '*',
        'Content-Type': 'application/json'
    }
};


// fetch(urlGetAllFoods).then(response=>{
//     return response.json();

// }).then(json=>{
//     console.log(json);
// });


fetch('http://jsonplaceholder.typicode.com/users').then(function(response) {
  // response.json() returns a promise, use the same .then syntax to work with the results
  response.json().then(function(users){
    // users is now our actual variable parsed from the json, so we can use it
    users.forEach(function(user){
      console.log(user.name)
    });
  });
}).catch(err => console.error(err));


// fetch('http://example.com/movies.json')
//   .then(response => response.json())
//   .then(data => console.log(data));



  