let nav=document.querySelectorAll('.nav-link');
let navCollapse =document.querySelector(".navbar-collapse.collapse");
nav.forEach(function(a)
{
	a.addEventListener("click",function() 
          {
		navCollapse.classList.remove("show");
	}
          
      )
        
})
let p=document.getElementsByName('p');



