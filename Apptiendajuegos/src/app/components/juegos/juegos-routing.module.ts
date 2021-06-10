import { JuegosComponent } from './juegos.component';
import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { JuegoComponent } from './juego/juego.component';
import { EditComponent } from './juego/edit/edit.component';

const routes: Routes =[
    { path: '', component: JuegosComponent},
    {path: 'plataformas/:plataforma',component: JuegosComponent},
    {path: 'detalle/:id/:accion', component: JuegoComponent},
    {path: 'tabs/edit/:id',component: EditComponent}
];
@NgModule({
    imports: [RouterModule.forChild(routes)],
    exports: [RouterModule]
})
export class JuegosRoutingModule { }