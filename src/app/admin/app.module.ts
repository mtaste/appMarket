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

@NgModule({
	imports: [
		FormsModule,
		ReactiveFormsModule,
		HttpModule,
		CommonModule,
		ComponentsModule,
		TabMenuModule,
		appsRoutes
	],
	declarations: [
		AppComponent
	],
	providers: [UserService]
})
export default class AppModule {}