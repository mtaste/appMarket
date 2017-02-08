import {
	Injectable,
	Inject
} from '@angular/core';

@Injectable()
export class UtilService {
	constructor() {}
		//json格式转树状结构
	TransData(a, idStr, pidStr, chindrenStr) {
		var r = [],
			hash = {},
			id = idStr,
			pid = pidStr,
			children = chindrenStr,
			i = 0,
			j = 0,
			len = a.length;
		for(; i < len; i++) {
			hash[a[i][id]] = a[i];
		}
		for(; j < len; j++) {
			var aVal = a[j],
				hashVP = hash[aVal[pid]];
			if(hashVP) {
				!hashVP[children] && (hashVP[children] = []);
				hashVP[children].push(aVal);
			} else {
				r.push(aVal);
			}
		}
		return r;
	};
	//获取属性所在Index
	GetArrayIndex(arry, f, v): any {
		for(var i in arry) {
			var t = arry[i];
			if(t[f] == v) {
				return i;
			}
		}
		return -1;
	};
	//复制值
	CopyObj(source, targer) {
		var m = {};
		for(var k in source) {
			m[k] = targer[k] || "";
		}
		return m;
	};
}