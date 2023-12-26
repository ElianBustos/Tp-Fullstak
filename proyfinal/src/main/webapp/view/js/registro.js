
// valida que usuario tenga un @ y el dominio codoACodo.edu.ar
function validarUsu() {
  console.log("ingresó a validarusu")
  
  // console.log(document)
  // console.log(document.body)
  // console.log(document.getElementById("user").value)

  // obtiene el valor ingresado por el usuario en el primer input y lo pone en la vairable user
  let user=document.getElementById("user").value
  
  console.log(`user: ${user}`)

  console.log( user.includes("@"))
  
  let mensaje=document.getElementById("mensaje")
   

  if (!user.includes("@")) {
    console.log("El usuario debe tener un @")
    mensaje.innerHTML="El usuario debe tener un @ "
    mensaje.className="bg-danger m-1 p-1 text-center text-light rounded"
    // document.getElementById("mensaje").style.color="red"
  } else if (!user.toLowerCase().includes("gmail.com")) {  
    mensaje.innerHTML="El usuario debe tener dominio gmail.com"
    mensaje.className="bg-danger m-1 p-1 text-center text-light rounded"
  } else {
    mensaje.innerHTML=""
    mensaje.className=""
    
   } 

}

function mostrarFortCant() {
  console.log("ingreso a mostrarfort")
  let pass=document.getElementById("pass").value
  console.log(`pass: ${pass}`)

  if (pass.length<=4) {
    mensaje.innerHTML="Fortaleza Baja"
    mensaje.className="bg-danger m-1 p-1 text-center text-light rounded"    
  } else if(pass.length<=8) {  
    mensaje.innerHTML="Fortaleza Media"
    mensaje.className="bg-info m-1 p-1 text-center text-light rounded"        
  } else {
    mensaje.innerHTML="Fortaleza Alta"
    mensaje.className="bg-success m-1 p-1 text-center text-light rounded"        
  }
}

function showFort() {
  let pass=document.getElementById("pass").value
  
  // todo: validar que tenga dígitos y caracteres especiales *@/$
  let regExpEmail=new RegExp("(?=.*[a-z])(?=.*[A-Z]).{8,}")

  if (!regExpEmail.test(pass)) {
    mensaje.innerHTML="La contraseña debe tener una minúscula, una mayúscula y al menos 8 caracteres"
    mensaje.className="bg-danger m-1 p-1 text-light text-center rounded"        
    
    
  } else {
    mensaje.innerHTML=""
    mensaje.className=""        
    
  }
}

function compararPass() {
  let pass=document.getElementById("pass").value
  let repPass=document.getElementById("repPass").value

  if (pass!=repPass) {
    mensaje.innerHTML="La contraseña no coinciden"
    mensaje.className="bg-danger m-1 p-1 text-center text-light rounded"        
    
  } else {
    mensaje.innerHTML=""
    mensaje.className=""        
    
  }
}