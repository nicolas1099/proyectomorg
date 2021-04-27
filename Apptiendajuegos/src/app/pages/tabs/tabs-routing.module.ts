import { PlataformasModule } from './../../components/plataformas/plataformas.module';
import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { TabsPage } from './tabs.page';

const routes: Routes = [
  {path: '',redirectTo: '/tabs/gamas', pathMatch: 'full' },

  {
    path: 'tabs',
    component: TabsPage,
    outlet: 'primary',
    children: [
      { path: '', loadChildren: () => import('../../components/comunes/comunes.module').then(m => m.ComunesModule) },
      { path: 'plataformas', loadChildren: () => import('../../components/plataformas/plataformas.module').then(m => m.PlataformasModule)   },
    ]
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class TabsPageRoutingModule {}
