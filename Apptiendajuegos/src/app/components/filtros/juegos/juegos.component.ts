import { Component, OnInit } from '@angular/core';
import { PlataformasService } from './../../../service/plataformas.service';
import { Iplataforma } from './../../../interfaces/juegosinterface';
import { juegosService } from './../../../service/filters/juegos.service';
import { Platform } from '@ionic/angular';
import { IfiltrosJuegos } from './../../../interfaces/filtrosinterfaces';


@Component({
  selector: 'app-juegos',
  templateUrl: './juegos.component.html',
  styleUrls: ['./juegos.component.scss'],
})
export class JuegosComponent implements OnInit {
  public plataformas: Iplataforma;
  public items: string[] = [];
  public precio = 60;
  public rangeVal: string;
  public Ifiltros: IfiltrosJuegos = {
    precios:[],
    plataformas:[]
  };

  constructor(public platform: Platform, private plataformasService: PlataformasService,
              private filterJService: juegosService) {
                this.platform.ready().then( () => {
                  this.rangeVal = "50";
                });
              }

  async ionViewWillEnter(){
  let respuesta = await this.plataformasService.getPlataformas();
  this.plataformas = respuesta.data;
  console.log (respuesta);
  }
  changeRange(precio){
    console.log(precio.detail.value.lower,':',precio.detail.value.upper);
    this.Ifiltros.precios[0] = precio.detail.value.lower;
    this.Ifiltros.precios[1] = precio.detail.value.upper;
  }
  async ngOnInit() {
    let respuesta = await this.plataformasService.getPlataformas();
    this.plataformas = respuesta.data;
    console.log (respuesta);
  }

  async selectplataforma(plataforma,pos){
    console.log(plataforma, pos);
    let i = this.items.indexOf(plataforma);
    if ( i == -1 ){
      this.items.push(plataforma);
  }
  else {
    this.items.splice( i, 1 );
  }
  console.log(this.items);
  }
  async aplicar(){
    this.Ifiltros.plataformas = this.items;

    console.log (this.Ifiltros);
    let respuesta = await this.filterJService.getFilter(this.Ifiltros);
      this.items = [];
  }
}
