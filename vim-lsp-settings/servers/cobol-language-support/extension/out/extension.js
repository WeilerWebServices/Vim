"use strict";
/*
 * Copyright (c) 2019 Broadcom.
 * The term "Broadcom" refers to Broadcom Inc. and/or its subsidiaries.
 *
 * This program and the accompanying materials are made
 * available under the terms of the Eclipse Public License 2.0
 * which is available at https://www.eclipse.org/legal/epl-2.0/
 *
 * SPDX-License-Identifier: EPL-2.0
 *
 * Contributors:
 *   Broadcom, Inc. - initial API and implementation
 */
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : new P(function (resolve) { resolve(result.value); }).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
Object.defineProperty(exports, "__esModule", { value: true });
const cp = require("child_process");
const vscode_1 = require("vscode");
const main_1 = require("vscode-languageclient/lib/main");
const JavaVersionCheck_1 = require("./JavaVersionCheck");
function activate(context) {
    return __awaiter(this, void 0, void 0, function* () {
        const fs = require("fs");
        // path resolved to identify the location of the LSP server into the extension
        const extPath = vscode_1.extensions.getExtension("BroadcomMFD.cobol-language-support").extensionPath;
        const LSPServerPath = `${extPath}/server/lsp-service-cobol-0.9.1.jar`;
        let serverOptions;
        try {
            yield isJavaInstalled();
            if (fs.existsSync(LSPServerPath)) {
                serverOptions = {
                    args: ["-Dline.separator=\r\n", "-jar", LSPServerPath, "pipeEnabled"],
                    command: "java",
                    options: { stdio: "pipe", detached: false },
                };
            }
            else {
                vscode_1.window.showErrorMessage("COBOL extension failed to start - LSP server not found");
                return;
            }
        }
        catch (err) {
            vscode_1.window.showErrorMessage(err.toString());
            return;
        }
        // Options to control the language client
        const clientOptions = {
            // Register the server for COBOL
            documentSelector: ["COBOL"],
        };
        const item = vscode_1.window.createStatusBarItem(vscode_1.StatusBarAlignment.Right, Number.MIN_VALUE);
        // Create the language client and start the client.
        const languageClient = new main_1.LanguageClient("LSP", "LSP extension for COBOL language", serverOptions, clientOptions);
        const disposable = languageClient.start();
        context.subscriptions.push(disposable);
        item.text = "Language Server is active";
    });
}
exports.activate = activate;
function isJavaInstalled() {
    return __awaiter(this, void 0, void 0, function* () {
        return new Promise((resolve, reject) => {
            const ls = cp.spawn("java", ["-version"]);
            ls.stderr.on("data", (data) => {
                let javaCheck = new JavaVersionCheck_1.DefaultJavaVersionCheck();
                if (!javaCheck.isJavaVersionSupported(data.toString())) {
                    reject("Java version 8 expected");
                }
                resolve();
            });
            ls.on("error", (code) => {
                if ("Error: spawn java ENOENT" === code.toString()) {
                    reject("Java 8 is not found");
                }
                reject(code);
            });
            ls.on("close", (code) => {
                if (code !== 0) {
                    reject("An error occurred when checking if Java was installed");
                }
            });
        });
    });
}
//# sourceMappingURL=extension.js.map