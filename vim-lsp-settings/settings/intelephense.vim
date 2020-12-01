augroup vimlsp_settings_intelephense_server
  au!
  LspRegisterServer {
      \ 'name': 'intelephense',
      \ 'cmd': {server_info->lsp_settings#get('intelephense', 'cmd', [lsp_settings#exec_path('intelephense'), '--stdio'])},
      \ 'root_uri':{server_info->lsp_settings#get('intelephense', 'root_uri', lsp_settings#root_uri(['.git/']))},
      \ 'initialization_options': lsp_settings#get('intelephense', 'initialization_options', {}),
      \ 'whitelist': lsp_settings#get('intelephense', 'whitelist', ['php']),
      \ 'blacklist': lsp_settings#get('intelephense', 'blacklist', []),
      \ 'config': lsp_settings#get('intelephense', 'config', {}),
      \ 'workspace_config': lsp_settings#get('intelephense', 'workspace_config', {}),
      \ }
augroup END
