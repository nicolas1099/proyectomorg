import { CambiorolComponent } from './cambiorol/cambiorol.component';
import { NgModule } from '@angular/core';
import { PortadaComponent } from './portada/portada.component';
import { PerfilComponent } from './perfil/perfil.component';
import { LoginComponent } from './login/login.component';
import { SignupComponent } from './signup/signup.component';
import { RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  { path: 'home', component: PortadaComponent},
  { path: 'perfil', component: PerfilComponent},
  { path: 'login', component: LoginComponent},
  { path: 'registro', component: SignupComponent},
  { path: 'cambiorol', component: CambiorolComponent},
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class ComunesRoutingModule { }
