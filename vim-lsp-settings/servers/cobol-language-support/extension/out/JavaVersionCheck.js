"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
class DefaultJavaVersionCheck {
    isJavaVersionSupported(versionString) {
        const versionPattern = new RegExp('(java|openjdk) (version)? ?"?((9|[0-9][0-9])|(1|9|[0-9][0-9])\.(1|8|[0-9][0-9]).*).*');
        return versionPattern.test(versionString);
    }
}
exports.DefaultJavaVersionCheck = DefaultJavaVersionCheck;
//# sourceMappingURL=JavaVersionCheck.js.map