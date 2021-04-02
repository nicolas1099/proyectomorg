import { PlataformasComponent } from './components/plataformas/plataformas.component';
import { NgModule, Component } from '@angular/core';
import { PortadaComponent } from './Components/comunes/portada/portada.component';
import { PerfilComponent } from './Components/comunes/perfil/perfil.component';
import { LoginComponent } from './Components/comunes/login/login.component';
import { SignupComponent } from './Components/comunes/signup/signup.component';
import { PreloadAllModules, RouterModule, Routes } from '@angular/router';
const routes: Routes = [
  { path: '', redirectTo: 'home', pathMatch: 'full' },
  { path: 'home', component: PortadaComponent , outlet: 'primary'},
  { path: 'perfil', component: PerfilComponent },
  { path: 'login', component: LoginComponent, outlet: 'primary'},
  { path: 'signup', component: SignupComponent},
  {path: '',
    loadChildren: () => import('./components/plataformas/plataformas.module').then(m => m.PlataformasModule)
  }
];
@NgModule({
  imports: [
    RouterModule.forRoot(routes, { preloadingStrategy: PreloadAllModules })
  ],
  exports: [RouterModule]
})
export class AppRoutingModule {}
