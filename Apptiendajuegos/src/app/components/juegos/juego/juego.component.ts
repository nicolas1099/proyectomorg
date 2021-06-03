import { environment } from './../../../../environments/environment';
import { ConfigService } from './../../../service/config.service';
import { IJuego } from './../../../interfaces/juegosinterface';
import { JuegosService } from './../../../service/juegos.service';
import { PlataformasService } from './../../../service/plataformas.service';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';

const URL = environment.url;
@Component({
  selector: 'app-juego',
  templateUrl: './juego.component.html',
  styleUrls: ['./juego.component.scss'],
})
export class JuegoComponent implements OnInit {
  public read: boolean = true;
  public codjuego: string;
  public accion: string;
  public juego: IJuego;
  public images = `${URL}/img/productos`;

  constructor(private route: ActivatedRoute, private gServices: PlataformasService,
              private JuegService:JuegosService,
              public configService: ConfigService) { }
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
    this.codjuego = this.route.snapshot.paramMap.get('id');
    this.accion = this.route.snapshot.paramMap.get('accion');

    console.log(this.codjuego);
    let respuesta = await this.JuegService.showJuegos(this.codjuego);
    console.log(respuesta);
    if (respuesta.status == 'success'){
      this.juego = respuesta.data[0];
      console.log(this.juego);
    }
  }
  async borrarjueg(codjuego){
    console.log(codjuego);
    let respuesta = await this.JuegService.dellJuegos(codjuego);
    console.log(respuesta);
    if (respuesta.status=='success'){
      
    }
  }

}
