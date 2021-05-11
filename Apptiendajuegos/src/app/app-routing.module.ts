import { NgModule, Component } from '@angular/core';
import { PreloadAllModules, RouterModule, Routes } from '@angular/router';
const routes: Routes = [
  { path: '', redirectTo: 'home', pathMatch: 'full' },
  {
    path: '',
    loadChildren: () => import('./pages/tabs/tabs.module').then( m => m.TabsPageModule)
  },
  { path: '',loadChildren: () => import('./components/comunes/comunes.module').then(m => m.ComunesModule) },

  {path: 'plataformas',
  loadChildren: () => import('./components/plataformas/plataformas.module').then(m => m.PlataformasModule)
  },
];
@NgModule({
  imports: [
    RouterModule.forRoot(routes, { preloadingStrategy: PreloadAllModules , useHash: true, 
      enableTracing: false})
  ],
  exports: [RouterModule]
})
export class AppRoutingModule {}
