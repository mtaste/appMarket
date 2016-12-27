import {
	BrowserModule,
	NgModule,
	FormsModule,
	HttpModule,
	JsonpModule
} from './shared/index';
import {
	AppComponent
} from './app.component';
import appRoutes from './app.routes';

@NgModule({
	declarations: [
		AppComponent
	],
	imports: [
		appRoutes,
		BrowserModule,
		FormsModule,
		HttpModule,
		JsonpModule
	],
	providers: [],
	bootstrap: [AppComponent]
})
export class AppModule {}