import {
	BrowserModule,
	FormsModule,
	HttpModule,
	JsonpModule,
	NgModule,
	ModuleWithProviders,
	ReactiveFormsModule,
	CommonModule
} from './index';
@NgModule({
	imports: [BrowserModule, FormsModule, HttpModule, JsonpModule],
	declarations: [],
	exports: [FormsModule, HttpModule, JsonpModule, ReactiveFormsModule, CommonModule]
})

export class SharedModule {
	static forRoot(): ModuleWithProviders {
		return {
			ngModule: SharedModule
		};
	}
}