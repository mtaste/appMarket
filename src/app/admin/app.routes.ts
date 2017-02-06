import {
	RouterModule
} from "@angular/router";
import {
	AppComponent
} from './app.component';
const routes = [{
	path: '',
	component: AppComponent,
}, {
	path: 'home',
	loadChildren: 'app/admin/home/home.module',
	name: 'Home'
}];
export default RouterModule.forChild(routes);