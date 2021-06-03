import { NavController } from '@ionic/angular';
import { JuegosService } from './../../../../service/juegos.service';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { PlataformasService } from './../../../../service/plataformas.service';
import { juegosService } from './../../../../service/filters/juegos.service';
import { IJuego } from './../../../../interfaces/juegosinterface';
import { ConfigService } from './../../../../service/config.service';

@Component({
  selector: 'app-edit',
  templateUrl: './edit.component.html',
  styleUrls: ['./edit.component.scss'],
})
export class EditComponent implements OnInit {
  public juegService: string; 
  public read: boolean = true;
  public codjuego: string;
  public id: string;
  public accion: string;
  public juego: IJuego;
  public descripcion : any;
  public images = `${URL}/img/productos`;


  constructor(private route: ActivatedRoute, private gServices: PlataformasService,
    private JuegService: JuegosService,
    public configService: ConfigService, public navController: NavController) { }

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
    async borrarcat(codjuego){
      console.log(codjuego);
      let respuesta = await this.JuegService.dellJuegos(codjuego);
      console.log(respuesta);
      if (respuesta.status=='success'){
      }
    }

async updjuegos(fEditJuegos) {

  if (fEditJuegos.invalid) { return; }
    console.log('error en datos');
  
  const peticion = await this.JuegService.updjuegos(this.juego.juegoid,this.juego.nombre_juego, this.juego.descripcion, this.juego.precio);
  if (peticion.status == 'success'){
    console.log(peticion);
    this.navController.navigateRoot('juegos', { animated: true });
  }
  }

}
