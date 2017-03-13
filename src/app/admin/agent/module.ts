import {
	NgModule
} from "@angular/core";
import {
	PNGModule,
	ComponentsModule
} from './index';
import {
	CommonModule
} from "@angular/common";
import {
	InfoComponent
} from "./info/info.component";
import routes from './routes';

@NgModule({
	imports: [
		CommonModule,
		routes,
		PNGModule.forRoot(),
		ComponentsModule
	],
	declarations: [
		InfoComponent
	]
})
export default class Module {}