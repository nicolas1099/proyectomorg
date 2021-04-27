import { UsuariosService } from './../../../service/usuarios.service';
import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';
import { NavController } from '@ionic/angular';
import { UiServiceService } from './../../../service/ui-service.service';
import { IUsuario } from './../../../interfaces/usuario-interface';

@Component({
  selector: 'app-signup',
  templateUrl: './signup.component.html',
  styleUrls: ['./signup.component.scss'],
})
export class SignupComponent implements OnInit {
  registerUser: IUsuario = {
    id: 5,
    name: 'pepe',
    apellidos: 'pepe',
    rol: 'invitado',
    email: 'pepe@hotmail.com',
    password: 'niko',
    image: 'jpg'
  }

  constructor(private uService: UsuariosService,
              private navCtrl: NavController, 
              private uiService: UiServiceService) { }

  ngOnInit() {}

  async registro(Registro) {

    if (Registro.invalid) { return; }
    const peticion = await this.uService.registro( this.registerUser );
    if ( peticion.status == 'success' ){
      this.uiService.alertaInformativa( peticion.message );
      this.navCtrl.navigateRoot('login', { animated: true });
    }else {
      console.log(peticion);
      this.uiService.alertaInformativa( JSON.stringify(peticion.errors) );
    }
    
  }

}
