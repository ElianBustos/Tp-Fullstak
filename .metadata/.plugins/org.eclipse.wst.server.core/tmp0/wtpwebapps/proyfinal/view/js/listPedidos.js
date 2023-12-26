//trae el modal mediante su id delModal
const deleModal = document.getElementById('deleModal')

// verifica que exista el modal, si existe ingresa al if
if (deleModal) {
	//agrega un evento onload al modal, cuando el modal se levante ejecuta la siguiente función
  deleModal.addEventListener('show.bs.modal', event => {
    
    //trae el link que levanto el modal
    const a = event.relatedTarget
    
    //trae el atributo idUser del link a
    const idpedido = a.getAttribute('idpedido')
    const nomb = a.getAttribute('nombre')
    const apel = a.getAttribute('apellido')
    const mail = a.getAttribute('mail')
   
    
    const divDataId = deleModal.querySelector('.modal-body #dataId')
    const divDataNombre = deleModal.querySelector('.modal-body #dataNombre')
    const divDataApell = deleModal.querySelector('.modal-body #dataApell')
    const divDataMail = deleModal.querySelector('.modal-body #dataMail')
    
    const imputIdPedido=deleModal.querySelector("#idpedido");
    imputIdPedido.value=idpedido
  
    //console.log(divDataUser);

    
    divDataId.innerHTML = `ID: ${idpedido}`
    divDataNombre.innerHTML = `Nombre: ${nomb}`
    divDataApell.innerHTML = `Apellido: ${apel}`
    divDataMail.innerHTML = `Gmail: ${mail}`

  })
}