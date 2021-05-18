import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { IonicModule } from '@ionic/angular';
import { FiltrosRoutingModule } from './filtros-routing.module';
import { FiltrosComponent } from './filtros.component';
import { JuegosComponent } from './juegos/juegos.component';
import { PlataformasComponent } from './plataformas/plataformas.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';



@NgModule({
  declarations: [FiltrosComponent, JuegosComponent,PlataformasComponent],
  exports:[ FiltrosComponent,JuegosComponent,PlataformasComponent],
  imports: [
    CommonModule,
    IonicModule,
    FiltrosRoutingModule,
    FormsModule,
    ReactiveFormsModule
  ]
})
export class FiltrosModule { }
