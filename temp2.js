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

// const request =new XMLHttpRequest();

//fetch('http://jsonplaceholder.typicode.com/users').then(function(response) {
//   // response.json() returns a promise, use the same .then syntax to work with the results
//   response.json().then(function(users){
//     // users is now our actual variable parsed from the json, so we can use it
//     users.forEach(function(user){
//       console.log(user.name)
//     });
//   });
// }).catch(err => console.error(err));


// fetch('http://example.com/movies.json')
//   .then(response => response.json())
//   .then(data => console.log(data));



// const params = {
//     method: 'GET',
//     mode: 'no-cors',
//     headers: {
//         'Access-Control-Allow-Origin': '*',
//         'Content-Type': 'application/json'
//     }
// };


// fetch(urlGetAllFoods).then(response=>{
//     return response.json();

// }).then(json=>{
//     console.log(json);
// });









const uId=1;
const token="a1184e5353a75dc5bb7013f6b620a325";
const page=1;

const api_root_url="https://foodelicious-api.000webhostapp.com/v3/";

const local_host_url="http://localhost/foodelicious-api-v3/v3/";

const urlGetAllFoods="foods/foods.php?uId="+uId+"&token="+token+"&page="+page;



fetch(api_root_url+urlGetAllFoods)
.then(function(response)
{
    return response.json();
})
.then((data)=>{
    
    // for(var i=0;i<data.length;i++)
    // {
    //     path="http://localhost/foodelicious-api-v3/v3/foods/"+data[i].mainPhoto;


        

    //     document.getElementById("recipes-list").innerHTML+=
        
    //     '<a href="singlerecipe.html" >'+
    //     '<div class="card"><img src="'+path+ '"alt="mainPhoto" class="img recipe-img"/><div class="container"><h4><b>'+data[i].fTitle+'</b></h4><p>'+data[i].cuisine+'</p></div></div>'+'</a>';
        
        
    // }


    let str="";

    data.map((values)=>{
        path=api_root_url+"foods/"+values.mainPhoto;
        str+=`<a href="singlerecipe.html"><div class="card"><img src="${path}"alt="mainPhoto" class="img recipe-img"/><div class="container"><h4><b>${values.fTitle}</b></h4><p>${values.cuisine}</p></div></div></a>`;
    });


    document.getElementById("recipes-list").innerHTML=str;

    


    
    
})
.catch(function(err)
{
    console.log(err);
});



const list=document.querySelector(".recipes-list");









  