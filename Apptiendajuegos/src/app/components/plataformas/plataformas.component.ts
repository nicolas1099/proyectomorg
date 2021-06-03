import { Component, OnInit,ViewChild } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { PlataformasService } from './../../service/plataformas.service';
import { Iplataforma } from './../../interfaces/juegosinterface';
import { environment } from './../../../environments/environment';
import { IRuta } from './../../interfaces/BreadInterfaces';
import { UsuariosService } from './../../service/usuarios.service';
import { NavController } from '@ionic/angular';
import { ConfigService } from './../../service/config.service';
import {IonInfiniteScroll} from '@ionic/angular';
const URL = environment.url;

@Component({
  selector: 'app-plataformas',
  templateUrl: './plataformas.component.html',
  styleUrls: ['./plataformas.component.scss'],
})
export class PlataformasComponent implements OnInit {
  @ViewChild(IonInfiniteScroll) infiniteScroll: IonInfiniteScroll;
  plataformas: Iplataforma;
  plataforma: any;
  rol: string;
  tipo: string;
  idPlataforma: string;
  isActiveConfig: boolean = false;
  isClickConfig: boolean = false;
  isAdmin: boolean = false;

  public images = `${URL}/img/plataformas`;
  public bread: IRuta[] = [
    {nombre: 'Plataformas',clase: 'active', link: ['/plataformas'] }
  ];
  constructor(private PlataformasService: PlataformasService,public uService: UsuariosService,
    private navCtrl: NavController,
    private router: Router,
    private route: ActivatedRoute,
    public configService: ConfigService) {
      this.idPlataforma = this.route.snapshot.paramMap.get('id');
      console.log (this.plataforma);
      console.log(this.PlataformasService.getPlataformas());
    }
  async ngOnInit() {
    let respuesta = await this.PlataformasService.getPlataformas();
    if (respuesta.status == 'success'){
      this.plataformas = respuesta.data;
      console.log('isAdmin', this.configService.isAdmin, this.configService.iconEdit, this.configService.isClickConfig);
      console.log(this.plataformas);
    }
  }
  pulsar(){
    this.configService.edicion();
  }
  async ionViewWillEnter(){
    console.log('filtros');
    let respuesta = await this.PlataformasService.getPlataformas();
    if (respuesta.status == 'success'){
      this.plataformas = respuesta.data;
    }
  }
  juegos (plataforma){
    console.log (plataforma)
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
