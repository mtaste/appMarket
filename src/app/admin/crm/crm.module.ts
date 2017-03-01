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
	CusComponent
} from "./cus/cus.component";
import {
	SupComponent
} from "./sup/sup.component";
import routes from './crm.routes';
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
	SharedModule,
	DropdownModule
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
		SharedModule,
		ComponentsModule,
		DropdownModule
	],
	declarations: [
		CusComponent,
		SupComponent
	]
})
export default class OrgRegisterModule {}