import { ConfigService } from './../../../service/config.service';
import { IJuego } from './../../../interfaces/juegosinterface';
import { JuegosService } from './../../../service/juegos.service';
import { PlataformasService } from './../../../service/plataformas.service';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-juego',
  templateUrl: './juego.component.html',
  styleUrls: ['./juego.component.scss'],
})
export class JuegoComponent implements OnInit {

  public read: boolean = true;
  public codproducto: string;
  public accion: string;
  public producto: IJuego;

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
    
  }

}
