import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { PlataformasService } from './../../service/plataformas.service';
import { Iplataforma } from './../../interfaces/juegosinterface';
import { environment } from './../../../environments/environment';
import { IRuta } from './../../interfaces/BreadInterfaces';
import { UsuariosService } from './../../service/usuarios.service';
import { NavController } from '@ionic/angular';
import { ConfigService } from './../../service/config.service';

const URL = environment.url;

@Component({
  selector: 'app-plataformas',
  templateUrl: './plataformas.component.html',
  styleUrls: ['./plataformas.component.scss'],
})
export class PlataformasComponent implements OnInit {
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
}
