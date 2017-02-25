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
} from "./form-component/form-component.component"
import {
	MenubarModule,
	GrowlModule,
	ConfirmDialogModule,
	FieldsetModule,
	InputTextModule,
	ButtonModule,
	DataTableModule
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
		DataTableModule
	],
	declarations: [
		MenuComponentComponent,
		FormComponentComponent
	],
	exports: [
		MenuComponentComponent,
		FormComponentComponent
	]
})

export class ComponentsModule {
	static forRoot(): ModuleWithProviders {
		return {
			ngModule: ComponentsModule
		};
	}
}