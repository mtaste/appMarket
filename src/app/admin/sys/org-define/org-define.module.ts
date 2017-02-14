import {
	NgModule
} from "@angular/core";
import {
	PNGModule
} from '../index';
import {
	CommonModule
} from "@angular/common";
import {
	OrgDefineComponent
} from "./org-define.component";
import routes from './org-define.routes';
import {
	FieldsetModule,
	TreeModule,
	InputTextModule,
	ButtonModule,
	MenubarModule,
	ConfirmDialogModule,
	GrowlModule,
	DataListModule,
	DialogModule,
	DataTableModule,
	SharedModule
} from 'primeng/primeng';
@NgModule({
	imports: [
		CommonModule,
		routes,
		PNGModule.forRoot(),
		FieldsetModule,
		TreeModule,
		InputTextModule,
		ButtonModule,
		MenubarModule,
		ConfirmDialogModule,
		GrowlModule,
		DataListModule,
		DialogModule,
		DataTableModule,
		SharedModule
	],
	declarations: [OrgDefineComponent]
})
export default class OrgDefineModule {}