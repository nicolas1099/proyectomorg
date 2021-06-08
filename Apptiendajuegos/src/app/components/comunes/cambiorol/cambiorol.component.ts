import { IUsuario,getUsers } from './../../../interfaces/usuario-interface';
import { UsuariosService } from './../../../service/usuarios.service';

import { Component, OnInit } from '@angular/core';
@Component({
  selector: 'app-cambiorol',
  templateUrl: './cambiorol.component.html',
  styleUrls: ['./cambiorol.component.scss'],
})
export class CambiorolComponent implements OnInit {
  usuarios: IUsuario;
  users: any;

  constructor(private UsuariosService:UsuariosService,) { console.log(this.UsuariosService.getUsuarios());}

  async ngOnInit() {
    let respuesta = await this.UsuariosService.getUsuarios();
    if (respuesta.status == 'success'){
      this.users = respuesta.data;
      console.log(this.users);
    }
  }
}

