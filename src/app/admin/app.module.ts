import {
	NgModule,
	FormsModule,
	ReactiveFormsModule,
	HttpModule,
	CommonModule
} from '../shared/index';
import {
	AppComponent
} from "./app.component";
import {
	UserService
} from "../user/user.service";
import {
	ComponentsModule
} from "../components/components.module";
import {
	TabMenuModule,
	ConfirmationService
} from 'primeng/primeng';
import appsRoutes from './app.routes';

import {
	AuthDefineService,
	AuthOrgService,
	OrgDefineService,
	MgUserService
} from "./services/index";

@NgModule({
	imports: [
		FormsModule,
		ReactiveFormsModule,
		HttpModule,
		CommonModule,
		ComponentsModule,
		appsRoutes,
		TabMenuModule
	],
	declarations: [
		AppComponent
	],
	providers: [
		UserService,
		AuthDefineService,
		ConfirmationService,
		AuthOrgService,
		OrgDefineService,
		MgUserService
	]
})
export default class AppModule {}