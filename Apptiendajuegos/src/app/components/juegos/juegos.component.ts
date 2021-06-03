import { JuegosService } from './../../service/juegos.service';
import { environment } from './../../../environments/environment';
import { Component, OnInit, Input,ViewChild  } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { PlataformasService } from './../../service/plataformas.service';
import { UsuariosService } from './../../service/usuarios.service';
import { MsnApijuegos, Iplataforma, IJuego, MsnApiPlataformas } from './../../interfaces/juegosinterface';
import { juegosService } from './../../service/filters/juegos.service';
import { ConfigService } from './../../service/config.service';
import {IonInfiniteScroll} from '@ionic/angular';

const URL = environment.url;
@Component({
  selector: 'app-juegos',
  templateUrl: './juegos.component.html',
  styleUrls: ['./juegos.component.scss'],
})
export class JuegosComponent implements OnInit {
  @ViewChild(IonInfiniteScroll) infiniteScroll: IonInfiniteScroll;
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
              public configService: ConfigService, public juegosService: juegosService,
              public JuegosService:JuegosService) { 
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

  async borrarjueg(codjuego){
    console.log(codjuego);
    let respuesta = await this.JuegosService.dellJuegos(codjuego);
    console.log(respuesta);
    if (respuesta.status=='success'){
      
    }
  }

  loadData(event){
    console.log('cargando siguientes.....')
    setTimeout(() => {
    event.target.complete()
    event.target.disabled = true;
    },500)
  }

  toggleInfiniteScroll() {
    this.infiniteScroll.disabled = !this.infiniteScroll.disabled;
  }

}
