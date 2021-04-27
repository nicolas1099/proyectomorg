import { Component, OnInit  } from '@angular/core';
import { Platform, NavController } from '@ionic/angular';
import { PlataformasService } from './service/plataformas.service';
import { UsuariosService } from './service/usuarios.service';
import { Router } from '@angular/router';
import { IUsuario } from './interfaces/usuario-interface';
import { ConfigService } from './service/config.service';

@Component({
  selector: 'app-root',
  templateUrl: 'app.component.html',
  styleUrls: ['app.component.scss'],
})
export class AppComponent implements OnInit{
  plataformas: any;
  usuario: IUsuario;

  constructor(
    private platform: Platform,
    //private splashScreen: SplashScreen,
    //private statusBar: StatusBar,
    private plataformasService: PlataformasService,
    private uService: UsuariosService,
    private navCtrl: NavController,
    private router: Router,
    private configService: ConfigService
  ) { this.initializeApp();
  }

  initializeApp() {
    this.platform.ready().then(() => {
      //this.statusBar.styleDefault();
      //this.splashScreen.hide();
    });
  }
  mostrarJuegos(g){
    console.log(g);
    this.router.navigate(["/plataformas",{ outlets: {'primary': ["productos", g] }} ]).then(nav => {
      console.log(nav); 
    }, err => {
      console.log(err)
    });
  }

  async ionViewWillEnter (){
    console.log('datos de usuario');
    this.uService.userStorageObservable
      .subscribe ( data => {
        this.usuario = data;
        console.log (this.usuario );
      })
    
  }
  
  async ngOnInit() {

    this.uService.userStorageObservable
      .subscribe ( data => {
        this.usuario = data;
        console.log (this.usuario );
      });
  }

  async getUser() {
      console.log (this.usuario);
  }
}

