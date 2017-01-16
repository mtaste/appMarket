import {
	AppsComponent
} from "./apps.component";
import {
	RouterModule
} from "@angular/router";
const routes = [{
	path: '',
	component: AppsComponent
}, {
	path: "community",
	loadChildren: 'app/apps/community/app.module',
	name: 'Community'
}];
export default RouterModule.forChild(routes);