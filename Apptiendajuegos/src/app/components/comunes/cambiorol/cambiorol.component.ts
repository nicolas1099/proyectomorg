import { ActivatedRoute, Router } from '@angular/router';
import { NavController } from '@ionic/angular';
import { IUsuario,getUsers } from './../../../interfaces/usuario-interface';
import { UsuariosService } from './../../../service/usuarios.service';

import { Component, OnInit } from '@angular/core';
@Component({
  selector: 'app-cambiorol',
  templateUrl: './cambiorol.component.html',
  styleUrls: ['./cambiorol.component.scss'],
})
export class CambiorolComponent implements OnInit {
  public read: boolean = true;
  public accion: string;
  public codusuario: string;
  public users: any;

  constructor(private UsuariosService:UsuariosService, public navController: NavController,
    private route: ActivatedRoute) {}
    public editar(){
      this.read = !this.read;
      if (this.read) {
        this.accion = 'readonly';
      }else{
        this.accion = null;
      }
      console.log(this.read, this.accion);
    }
  async ngOnInit() {
    this.codusuario = this.route.snapshot.paramMap.get('id');
    this.accion = this.route.snapshot.paramMap.get('accion');
    console.log(this.codusuario);
    let respuesta = await this.UsuariosService.getUsuarios();
    console.log(respuesta)
    if (respuesta.status == 'success'){
      this.users = respuesta.data;
      console.log(this.users);
    }
  }
}

