import { UsuariosService } from './../../../service/usuarios.service';
import { Component, OnInit } from '@angular/core';
@Component({
  selector: 'app-cambiorol',
  templateUrl: './cambiorol.component.html',
  styleUrls: ['./cambiorol.component.scss'],
})
export class CambiorolComponent implements OnInit {

  constructor(private UsuariosService:UsuariosService) { console.log(this.UsuariosService.getUsuarios());}

  async ngOnInit() {
    let usuarios = await this.UsuariosService.getUsuarios();
      console.log(this.UsuariosService);
  }

}
