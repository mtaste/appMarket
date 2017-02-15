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
	MgUserComponent
} from "./mg-user.component";
import routes from './mg-user.routes';
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
	declarations: [MgUserComponent]
})
export default class MgUserModule {}