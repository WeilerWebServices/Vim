augroup vimlsp_settings_metals
  au!
  LspRegisterServer {
      \ 'name': 'metals',
      \ 'cmd': {server_info->lsp_settings#get('metals', 'cmd', [lsp_settings#exec_path('metals')])},
      \ 'root_uri':{server_info->lsp_settings#get('metals', 'root_uri', lsp_settings#root_uri(['.git/', 'build.sbt']))},
      \ 'initialization_options': lsp_settings#get('metals', 'initialization_options', v:null),
      \ 'whitelist': lsp_settings#get('metals', 'whitelist', ['scala', 'sbt']),
      \ 'blacklist': lsp_settings#get('metals', 'blacklist', []),
      \ 'config': lsp_settings#get('metals', 'config', {}),
      \ 'workspace_config': lsp_settings#get('metals', 'workspace_config', {}),
      \ }
augroup END
