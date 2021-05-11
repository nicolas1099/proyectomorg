import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { PlataformasService } from './../../../service/plataformas.service';
import { IJuego, Iplataforma, MsnApiPlataformas } from './../../../interfaces/juegosinterface';
import { environment } from './../../../../environments/environment';
import { IRuta } from './../../../interfaces/BreadInterfaces';

const URL = environment.url;

@Component({
  selector: 'app-juegosplataformas',
  templateUrl: './juegosplataformas.component.html',
  styleUrls: ['./juegosplataformas.component.scss'],
})
export class JuegosplataformasComponent implements OnInit {
  public respuesta: MsnApiPlataformas;
  public idplataforma: string;
  public plataforma: Iplataforma;
  public juegos: IJuego[];
  public images = `${URL}/img/juegos`;
  public bread: IRuta[] = [
    { nombre: 'plataformas', clase: 'active', link : [ '/plataformas'] }
  ];
  constructor(private route: ActivatedRoute, private Psevice: PlataformasService) { }

  ngOnInit() {
    this.idplataforma = this.route.snapshot.paramMap.get('id');
    this.bread.push({ nombre: this.idplataforma,clase:'', link:[]});
  }

}
