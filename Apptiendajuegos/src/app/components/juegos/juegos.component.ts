import { environment } from './../../../environments/environment';
import { Component, OnInit, Input } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { PlataformasService } from './../../service/plataformas.service';
import { UsuariosService } from './../../service/usuarios.service';
import { MsnApijuegos, Iplataforma, IJuego, MsnApiPlataformas } from './../../interfaces/juegosinterface';
import { juegosService } from './../../service/filters/juegos.service';
import { ConfigService } from './../../service/config.service';


const URL = environment.url;
@Component({
  selector: 'app-juegos',
  templateUrl: './juegos.component.html',
  styleUrls: ['./juegos.component.scss'],
})
export class JuegosComponent implements OnInit {
  public respuesta: MsnApijuegos;
  public plataforma: Iplataforma;
  public idplataforma: string;
  public juegos: IJuego[];
  public images = `${URL}/img/productos`;
  public juego: IJuego = {
    nombre_juego: '',
    precio: 0
  };

  constructor(private route: ActivatedRoute,private router:Router,public filterJService: juegosService,
              private pService: PlataformasService,public uService:UsuariosService,
              public configService: ConfigService) { 
    this.idplataforma = this.route.snapshot.paramMap.get('plataforma');
    console.log(this.idplataforma);
    this.router.navigate(['/filtross',{outlets:{secondary:['juegos']}}]);
              }

  async ngOnInit() {
    this.respuesta = await this.pService.getJuegosPlataforma(this.idplataforma);
    console.log(this.respuesta);
    if (this.respuesta.status == 'success'){
      this.juegos = this.respuesta.data;
    }
    this.pService.juegosStorageObservable
    .subscribe (respuesta =>  {
      this.juegos = respuesta;
      console.log (this.juegos);
    });

    this.filterJService.juegosStorageObservable
    .subscribe (respuesta => {
      this.juegos = respuesta;
      console.log (this.juegos);
    });

    this.uService.userStorageObservable
    .subscribe(data =>{});
  }

  editar(){
    console.log (this.juegos)
  }

}
