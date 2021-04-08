import { JuegosplataformasComponent } from './juegosplataformas/juegosplataformas.component';
import { PlataformasComponent } from './plataformas.component';
import { IonicModule } from '@ionic/angular';
import { ComunesModule } from './../comunes/comunes.module';
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { PlataformasRoutingModule } from './plataformas-routing.module';



@NgModule({
  declarations: [PlataformasComponent, JuegosplataformasComponent],
  imports: [
    CommonModule,
    ComunesModule,
    IonicModule,
    PlataformasRoutingModule
  ]
})
export class PlataformasModule { }
