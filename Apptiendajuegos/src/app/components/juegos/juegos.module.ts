import { NgModule } from '@angular/core';
import { IonicModule } from '@ionic/angular';
import { CommonModule } from '@angular/common';
import { JuegosRoutingModule } from './juegos-routing.module';
import { PipesModule } from './../../pipes/pipes.module';
import { JuegosComponent } from './juegos.component';
import { JuegoComponent } from './juego/juego.component';
import { EditComponent } from './juego/edit/edit.component';
import { ComunesModule } from './../comunes/comunes.module';
import { FormsModule } from '@angular/forms';



@NgModule({
  declarations: [JuegoComponent, JuegosComponent, EditComponent],
  exports: [JuegosComponent,JuegoComponent,EditComponent],
  imports: [
    CommonModule,
    IonicModule,
    FormsModule,
    PipesModule,
    ComunesModule,
    JuegosRoutingModule
  ]
})
export class JuegosModule { }
