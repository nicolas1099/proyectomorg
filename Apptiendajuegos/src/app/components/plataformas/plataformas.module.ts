import { NgModule } from '@angular/core';
import { ComunesModule } from './../comunes/comunes.module';
import { IonicModule } from '@ionic/angular';
import { CommonModule } from '@angular/common';
import { PlataformasRoutingModule } from './plataformas-routing.module';
import { PlataformasComponent } from './plataformas.component';
import { JuegosplataformasComponent } from './juegosplataformas/juegosplataformas.component';


import { FormsModule } from '@angular/forms';
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
