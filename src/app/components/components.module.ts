import {
	NgModule,
	ModuleWithProviders,
	CommonModule
} from '../shared/index';
import {
	MenuComponentComponent
} from "./menu-component/menu-component.component"

@NgModule({
	imports: [CommonModule],
	declarations: [MenuComponentComponent],
	exports: [MenuComponentComponent]
})

export class ComponentsModule {
	static forRoot(): ModuleWithProviders {
		return {
			ngModule: ComponentsModule
		};
	}
}