import { ConfigService } from './../../../service/config.service';
import { UsuariosService } from './../../../service/usuarios.service';
import { IUsuario } from './../../../interfaces/usuario-interface';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-perfil',
  templateUrl: './perfil.component.html',
  styleUrls: ['./perfil.component.scss'],
})
export class PerfilComponent implements OnInit {

  usuario: IUsuario;

  constructor(private uService: UsuariosService, public configService: ConfigService) { }

  async ngOnInit() {
    this.uService.userStorageObservable
      .subscribe ( data => {
        this.usuario = data;
        console.log (this.usuario );
      })
  }
  async ionViewWillEnter (){
    console.log('entra');
    this.usuario = await this.uService.getUsuarioStorage();
    console.log(this.usuario);
  }

}
