import {
	MgUserComponent
} from "./mg-user.component";
import {
	RouterModule
} from "@angular/router";
const routes = [{
	path: '',
	component: MgUserComponent
}];
export default RouterModule.forChild(routes);