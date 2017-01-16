import {
	NgModule
} from '../shared/index';
import {
	AppsComponent
} from "./apps.component";
import appsRoutes from './apps.routes';
@NgModule({
	imports: [
		appsRoutes
	],
	declarations: [
		AppsComponent
	]
})
export default class AppsModule {}