import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';
import { UsuariosService } from './../../../service/usuarios.service';
import { NavController } from '@ionic/angular';
import { UiServiceService } from './../../../service/ui-service.service';
import { ILogin } from './../../../interfaces/usuario-interface';
import { Router, ActivatedRoute } from '@angular/router';
import { ConfigService } from './../../../service/config.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss'],
})
export class LoginComponent implements OnInit {
    loginUser: ILogin = {
    email: 'niko@hotmail.com',
    password: 'niko'
  };

  constructor(private uService: UsuariosService,
    private navCtrl: NavController,
    private router: Router,
    private route: ActivatedRoute,
    private uiService: UiServiceService, 
    private configService: ConfigService) { }
    async login(fLogin: NgForm){
      console.log(this.loginUser);
      if (fLogin.invalid) { return; }

      const peticion = await this.uService.login(this.loginUser);
  
      if ( peticion.status == 'success' ){
        if (peticion.user.rol == 'administrador'){
          this.configService.isAdmin = true;
        }else {
          this.configService.isAdmin = false;
        }
        // navegar al home
      this.router.navigate(['/', { outlets: {
          primary: ['tabs','perfil'],
        } }], { relativeTo: this.route.parent } );
      }else {
        this.uiService.alertaInformativa('Usuario/Password no son válidos');
      }
    }
  

  ngOnInit() {}

}

