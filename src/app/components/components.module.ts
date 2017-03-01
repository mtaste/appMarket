import {
	NgModule,
	ModuleWithProviders,
	CommonModule
} from '../shared/index';
import {
	PNGModule
} from '../shared/png.module';
import {
	MenuComponentComponent
} from "./menu-component/menu-component.component";
import {
	FormComponentComponent
} from "./form-component/form-component.component";
import {
	ListComponentComponent
} from "./list-component/list-component.component";
import {
	ListFormComponentComponent
} from "./list-form-component/list-form-component.component";
import {
	EasyFormComponentComponent
} from "./easy-form-component/easy-form-component.component";
import {
	AuthFuncsComponent
} from "./auth-funcs/auth-funcs.component";
import {
	MenubarModule,
	GrowlModule,
	ConfirmDialogModule,
	FieldsetModule,
	InputTextModule,
	ButtonModule,
	DataTableModule,
	InputTextareaModule,
	DialogModule
} from 'primeng/primeng';
@NgModule({
	imports: [
		CommonModule,
		PNGModule.forRoot(),
		MenubarModule,
		GrowlModule,
		FieldsetModule,
		InputTextModule,
		ButtonModule,
		DataTableModule,
		InputTextareaModule,
		DialogModule,
		ConfirmDialogModule
	],
	declarations: [
		MenuComponentComponent,
		FormComponentComponent,
		ListComponentComponent,
		ListFormComponentComponent,
		EasyFormComponentComponent,
		AuthFuncsComponent
	],
	exports: [
		MenuComponentComponent,
		FormComponentComponent,
		ListComponentComponent,
		ListFormComponentComponent,
		EasyFormComponentComponent,
		AuthFuncsComponent
	]
})

export class ComponentsModule {
	static forRoot(): ModuleWithProviders {
		return {
			ngModule: ComponentsModule
		};
	}
}