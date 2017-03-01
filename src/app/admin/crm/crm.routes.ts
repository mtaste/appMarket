import {
	CusComponent
} from "./cus/cus.component";
import {
	RouterModule
} from "@angular/router";
const routes = [{
	path: 'cus',
	component: CusComponent
}];
export default RouterModule.forChild(routes);