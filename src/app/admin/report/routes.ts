import {
	RouterModule
} from "@angular/router";
const routes = [{
	path: 'mms',
	loadChildren: 'app/admin/report/mms/module',
	name: 'MMSReport'
}];
export default RouterModule.forChild(routes);