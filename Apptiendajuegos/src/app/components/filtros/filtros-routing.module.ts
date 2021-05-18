import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { FiltrosComponent } from './filtros.component';
import { PlataformasComponent } from './plataformas/plataformas.component';
import { JuegosComponent } from './juegos/juegos.component';


const routes: Routes=[
{path: '',redirectTo: '/plataformas',pathMatch:'full'},
{path: 'plataformas', component: PlataformasComponent, outlet: 'secondary'},
{path: 'juegos',component: JuegosComponent,outlet: 'secondary'}
];


@NgModule({
    imports: [RouterModule.forChild(routes)],
    exports: [RouterModule]
})
export class FiltrosRoutingModule { }