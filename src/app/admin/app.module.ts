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
import appsRoutes from './app.routes';

@NgModule({
	imports: [
		FormsModule,
		ReactiveFormsModule,
		HttpModule,
		CommonModule,
		appsRoutes
	],
	declarations: [
		AppComponent
	]
})
export default class AppModule {}