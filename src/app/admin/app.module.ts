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
	TabMenuModule
} from 'primeng/primeng';
import appsRoutes from './app.routes';

import {
	AuthDefineService
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
		AuthDefineService
	]
})
export default class AppModule {}