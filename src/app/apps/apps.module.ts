import {
	Router,
	Inject,
	NgModule,
	CommonModule,
	FormsModule,
	ReactiveFormsModule,
	HttpModule
} from './index';
import {
	AppsComponent
} from "./apps.component";
import {
	AppsRouterActivate,
	AppsRouterService,
	AppsActivate
} from "./apps.routers.service";

import appRoutes from './apps.routes';

@NgModule({
	imports: [
		appRoutes,
		CommonModule,
		FormsModule,
		ReactiveFormsModule,
		HttpModule
	],
	declarations: [
		AppsComponent
	],
	providers: [
		AppsRouterService,
		AppsRouterActivate,
		AppsActivate
	]
})
export default class AppsModule {
	constructor(
		private router: Router,
		private appsRouterService: AppsRouterService
	) {}
}