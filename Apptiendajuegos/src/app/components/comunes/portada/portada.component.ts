import { UsuariosService } from '../../../service/usuarios.service';
import { Component, OnInit } from '@angular/core';


@Component({
  selector: 'app-portada',
  templateUrl: './portada.component.html',
  styleUrls: ['./portada.component.scss'],
})
export class PortadaComponent implements OnInit {

  constructor(private uService: UsuariosService) { }
  

  ngOnInit() {
    this.uService.userStorageObservable
    .subscribe ( data => {
      console.log (data );
    })
  }

}
