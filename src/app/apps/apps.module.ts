import {
	NgModule
} from '../shared/index';
import {
	AppsComponent
} from "./apps.component";
import {
	AppsRoutes
} from './apps.routes';
@NgModule({
	imports: [
		AppsRoutes
	],
	declarations: [
		AppsComponent
	]
})
export default class AppsModule {}