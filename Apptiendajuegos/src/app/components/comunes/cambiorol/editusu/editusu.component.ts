import { getUsers, IUsuario } from './../../../../interfaces/usuario-interface';
import { UsuariosService } from './../../../../service/usuarios.service';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { NavController } from '@ionic/angular';


@Component({
  selector: 'app-editusu',
  templateUrl: './editusu.component.html',
  styleUrls: ['./editusu.component.scss'],
})
export class EditusuComponent implements OnInit {
  public read: boolean = true;
  public coduser: string;
  public users: IUsuario;
  public codusuario: string;
  public accion: string;

  constructor(private route: ActivatedRoute,public UsuariosService:UsuariosService,public navController: NavController) { }

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
    let respuesta = await this.UsuariosService.showusuario(this.codusuario);
    console.log(respuesta)
    if (respuesta.status == 'success'){
      this.users = respuesta.data[0];
      console.log(this.users);
    }
  }
  async updusu(fEditusuarios){
    if (fEditusuarios.invalid) { return; }
    console.log('error en datos');
    const peticion = await this.UsuariosService.updUsuarios(this.users.id,this.users.rol);
  if (peticion.status == 'success'){
    console.log(peticion);
    this.navController.navigateRoot('rol', { animated: true });
  }
  }

  }

