augroup vimlsp_settings_bash_language_server
  au!
  LspRegisterServer {
      \ 'name': 'bash-language-server',
      \ 'cmd': {server_info->lsp_settings#get('bash-language-server', 'cmd', [lsp_settings#exec_path('bash-language-server'), 'start'])},
      \ 'root_uri':{server_info->lsp_settings#get('bash-language-server', 'root_uri', lsp_settings#root_uri(['.git/']))},
      \ 'initialization_options': lsp_settings#get('bash-language-server', 'initialization_options', v:null),
      \ 'whitelist': lsp_settings#get('bash-language-server', 'whitelist', ['sh']),
      \ 'blacklist': lsp_settings#get('bash-language-server', 'blacklist', []),
      \ 'config': lsp_settings#get('bash-language-server', 'config', {}),
      \ 'workspace_config': lsp_settings#get('bash-language-server', 'workspace_config', {}),
      \ }
augroup END
