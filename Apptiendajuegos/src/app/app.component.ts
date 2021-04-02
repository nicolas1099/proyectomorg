import { Component, OnInit  } from '@angular/core';
import { Platform, NavController } from '@ionic/angular';
import { UsuariosService } from './service/usuarios.service';
import { IUsuario } from './interfaces/usuario-interface';
import { Router } from '@angular/router';
@Component({
  selector: 'app-root',
  templateUrl: 'app.component.html',
  styleUrls: ['app.component.scss'],
})
export class AppComponent{
  usuario: IUsuario;

  constructor(
  ) {}
}

