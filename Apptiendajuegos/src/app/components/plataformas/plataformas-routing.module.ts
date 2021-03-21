import { PlataformasComponent } from './plataformas.component';
import { JuegosplataformasComponent } from './juegosplataformas/juegosplataformas.component';
import { NgModule, Component } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
const routes: Routes = [
 {
   path: '', component: PlataformasComponent,
    children: [

    ]
 },
{
  path: 'productos/:id', component: JuegosplataformasComponent, outlet: 'primary'
}

];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class PlataformasRoutingModule { }
