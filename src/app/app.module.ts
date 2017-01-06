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
import {
	API_URL,
	STARWARS_BASE_URL
} from "./shared/constance.service";

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
	providers: [{
		provide: API_URL,
		useValue: `https://en.wikipedia.org/w/api.php?callback=JSONP_CALLBACK`
	}, {
		provide: STARWARS_BASE_URL,
		useValue: `app/json`
	}],
	bootstrap: [AppComponent]
})
export class AppModule {}