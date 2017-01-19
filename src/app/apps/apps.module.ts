import {
	Router,
	Inject
} from '../shared/index';
import {
	NgModule,
	CommonModule
} from '../shared/index';
import {
	AppsComponent
} from "./apps.component";
import {
	AppsMainComponent
} from "./apps.main.component";
import {
	AppsRouterActivate,
	AppsRouterService
} from "./apps.routers.service";

import appRoutes from './apps.routes';

@NgModule({
	imports: [
		appRoutes,
		CommonModule
	],
	declarations: [
		AppsComponent,
		AppsMainComponent
	],
	providers: [AppsRouterService, AppsRouterActivate]
})
export default class AppsModule {
	constructor(
		private router: Router,
		private appsRouterService: AppsRouterService
	) {
		this.appsRouterService.GetAppsList();
	}
}